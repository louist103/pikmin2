#ifndef _MATRIXF_H
#define _MATRIXF_H

#include "Dolphin/mtx.h"
#include "types.h"
#include "Vector3.h"

struct Quat;

/**
 * This class CANNOT have any explicit constructors, due to CollPart::update.
 * If it does, then it loses the implicit default constructor.
 * Explicit constructors show up in recursion. Implicit does not.
 */
struct Matrixf {
	inline Matrixf() { }
	// // TODO: Determine if this could've actually existed, or if I'm just making
	// // it up.
	inline Matrixf(const Mtx mtx)
	{
		mMatrix.mtxView[0][0] = mtx[0][0];
		mMatrix.mtxView[0][1] = mtx[0][1];
		mMatrix.mtxView[0][2] = mtx[0][2];
		mMatrix.mtxView[0][3] = mtx[0][3];
		mMatrix.mtxView[1][0] = mtx[1][0];
		mMatrix.mtxView[1][1] = mtx[1][1];
		mMatrix.mtxView[1][2] = mtx[1][2];
		mMatrix.mtxView[1][3] = mtx[1][3];
		mMatrix.mtxView[2][0] = mtx[2][0];
		mMatrix.mtxView[2][1] = mtx[2][1];
		mMatrix.mtxView[2][2] = mtx[2][2];
		mMatrix.mtxView[2][3] = mtx[2][3];
	}
	/**
	 * @reifiedAddress{80137300}
	 * @reifiedFile{plugProjectKandoU/collinfo.cpp}
	 */
	f32& operator()(int p1, int p2) { return mMatrix.mtxView[p1][p2]; }

	Vector3f operator*(Vector3f& vec)
	{
		Vector3f outVec;
		outVec.x = (*this)(0, 0) * vec.x + (*this)(0, 1) * vec.y + (*this)(0, 2) * vec.z;
		outVec.y = (*this)(1, 0) * vec.x + (*this)(1, 1) * vec.y + (*this)(1, 2) * vec.z;
		outVec.z = (*this)(2, 0) * vec.x + (*this)(2, 1) * vec.y + (*this)(2, 2) * vec.z;
		return outVec;
	}

	/**
	 * @reifiedAddress{801372DC}
	 * @reifiedFile{plugProjectKandoU/collinfo.cpp}
	 */
	void getBasis(int p1, Vector3f& p2)
	{
		p2.x = (*this)(0, p1);
		p2.y = (*this)(1, p1);
		p2.z = (*this)(2, p1);
	}
	/**
	 * @reifiedAddress{801372C0}
	 * @reifiedFile{plugProjectKandoU/collinfo.cpp}
	 */
	void getTranslation(Vector3f& translation) { getBasis(3, translation); }

	void getRow(int p1, Vector3f& p2)
	{
		p2.x = (*this)(p1, 0);
		p2.y = (*this)(p1, 1);
		p2.z = (*this)(p1, 2);
	}

	void setRow(int p1, Vector3f& p2)
	{
		(*this)(p1, 0) = p2.x;
		(*this)(p1, 1) = p2.y;
		(*this)(p1, 2) = p2.z;
	}

	inline Vector3f getBasis(int p1) { return Vector3f((*this)(0, p1), (*this)(1, p1), (*this)(2, p1)); }

	/**
	 * @fabricated
	 */
	void setBasis(int p1, Vector3f& p2)
	{
		(*this)(0, p1) = p2.x;
		(*this)(1, p1) = p2.y;
		(*this)(2, p1) = p2.z;
	}

	inline Vector3f mtxMult(Vector3f& vec)
	{
		Vector3f outVec;
		PSMTXMultVec(this->mMatrix.mtxView, (Vec*)&vec, (Vec*)&outVec);
		return outVec;
	}

	/**
	 * @fabricated
	 */
	void setTranslation(Vector3f& translation) { setBasis(3, translation); }

	void makeNaturalPosture(Vector3f&, f32);
	void print(char*);
	void makeST(Vector3f&, Vector3f&);
	void makeSR(Vector3f&, Vector3f&);
	void makeSRT(Vector3f&, Vector3f&, Vector3f&);
	void makeT(Vector3f&);
	void makeTR(Vector3f&, Vector3f&);
	void makeTQ(Vector3f&, Quat&);
	void makeQ(Quat&);

	// Unused/inlined:
	void makeSQT(Vector3f&, Quat&, Vector3f&);
	void makeNaturalPosture(Vector3f&);

	inline Vector3f multTranspose(Vector3f& vec)
	{
		Vector3f outVec;
		outVec.x = vec.x * (*this)(0, 0) + vec.y * (*this)(1, 0) + vec.z * (*this)(2, 0);
		outVec.y = vec.x * (*this)(0, 1) + vec.y * (*this)(1, 1) + vec.z * (*this)(2, 1);
		outVec.z = vec.x * (*this)(0, 2) + vec.y * (*this)(1, 2) + vec.z * (*this)(2, 2);
		return outVec;
	}

	union {
		Mtx mtxView;
		struct {
			f32 x[4];
			f32 y[4];
			f32 z[4];
		} vecView;
		struct {
			Vec x;
			Vec y;
			Vec z;
			Vec t;
		} flippedVecView;
		// struct {
		// 	Vector3f x;
		// 	Vector3f y;
		// 	Vector3f z;
		// 	Vector3f t;
		// } flippedVectorView;

		struct {
			f32 xx, yx, zx, tx;
			f32 xy, yy, zy, ty;
			f32 xz, yz, zz, tz;
		} structView;
	} mMatrix;
	// f32 mMatrix[3][4];
};
// sizeof is 48

inline Matrixf concatMatrixf(Matrixf& mat1, Matrixf& mat2)
{
	Matrixf concatMtx;
	PSMTXConcat(mat1.mMatrix.mtxView, mat2.mMatrix.mtxView, concatMtx.mMatrix.mtxView);
	return concatMtx;
}

inline void scaleMatrix(Matrixf* mtx, f32 scale)
{
	mtx->mMatrix.structView.xx *= scale;
	mtx->mMatrix.structView.yx *= scale;
	mtx->mMatrix.structView.zx *= scale;
	mtx->mMatrix.structView.xy *= scale;
	mtx->mMatrix.structView.yy *= scale;
	mtx->mMatrix.structView.zy *= scale;
	mtx->mMatrix.structView.xz *= scale;
	mtx->mMatrix.structView.yz *= scale;
	mtx->mMatrix.structView.zz *= scale;
}
#endif
