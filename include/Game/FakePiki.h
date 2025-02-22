#ifndef _GAME_FAKEPIKI_H
#define _GAME_FAKEPIKI_H

#include "Game/WaterBox.h"
#include "Game/Creature.h"
#include "Game/EnemyParmsBase.h"
#include "Game/shadowMgr.h"
#include "SysShape/MotionListener.h"
#include "Vector3.h"
#include "PikiAnimator.h"

struct J3DJoint;

namespace Game {
struct IPikiAnims {
	enum PikiAnims {
		NULLANIM = -1,
		AKUBI    = 0, // yawn
		ASIBUMI,      // stepped on
		ATTACK1,
		CHATTING,
		DAMAGE,
		DEAD,
		DEAD2,
		DEAD3,
		ESA, // feed
		FALL,
		FUE,      // whistle
		FURIMUKU, // look over shoulder
		GAKKARI,  // disappointed
		GATTU,    // agree
		GETUP,
		GFURI1,  // shake1
		GFURI2,  // shake2
		GNUKE,   // evade?
		GROWUP1, // nectar (high jump)
		GROWUP2, // nectar (low jump)
		HNOBORU, // climb
		IRAIRA,  // frustrated
		JHIT,
		JKOKE, // moss?
		JOB1,
		JOB2,
		KOROBU,  // fall over
		KUTTUKU, // go together
		NIGERU,  // run away
		RUN2,
		WALK,
		WAIT,
		KIZUKU, // build
		THROW,
		THROWWWAIT,
		ROLLJUMP, // throwing spin animation
		HANG,
		TYAKUSUI, // drowning
		OBORERU,  // learn
		SIZUMU,   // feel depressed
		PICKLOOP,
		PICK_PUT,
		NUKU, // pull out
		NUKU3,
		NUKARERU, // to be removed from
		NUKARE3,  // swept away
		KAIFUKU,
		KAIFUKU3,
		KAIFUKU2,
		MIZUAGE,
		JUMP,
		JUMPB1,
		JUMPR1,
		SAGASU,   // search
		SAGASU2,  // search2
		MIZUNOMI, // drinking
		SUWARU,   // sit
		NERU,     // sleep
		HORU,     // leave alone? throw away
		DOSIN,
		KOROBU2, // falldown2
		GASDEAD,
		GDEAD,
		SUWARERU,
		PUNCH,
		PUNCH2,
		PUNCH3
	};
};

enum FakePikiDynamics {
	FPFLAGS_MoveRotationDisabled   = 0x1,
	FPFLAGS_UpdateTrMatrixDisabled = 0x2,
	FPFLAGS_MoveVelocityDisabled   = 0x4,
	FPFLAGS_MapCollisionDisabled   = 0x8,
	FPFLAGS_Unk5                   = 0x10,
	FPFLAGS_Zikatu                 = 0x20,
	FPFLAGS_WasZikatu              = 0x80,
};

struct FakePiki : public Creature, public SysShape::MotionListener {
	FakePiki();

	// these are here so they can be used in vtable methods
	inline void setFPFlag(u32 flag) { mFakePikiFlags.typeView |= flag; }
	inline void resetFPFlag(u32 flag) { mFakePikiFlags.typeView &= ~flag; }
	inline bool isFPFlag(u32 flag) { return mFakePikiFlags.typeView & flag; }

	// vtable 1 (Creature)
	virtual Vector3f getPosition();                           // _08
	virtual void getBoundingSphere(Sys::Sphere& boundSphere); // _10 (weak)
	virtual void doAnimation();                               // _3C
	virtual void doEntry();                                   // _40
	virtual void doSimulation(f32);                           // _4C
	virtual f32 getFaceDir();                                 // _64 (weak)
	virtual void setVelocity(Vector3f& vel);                  // _68 (weak)
	virtual Vector3f getVelocity();                           // _6C (weak)
	virtual void onSetPosition(Vector3f& dest);               // _70 (weak)
	virtual void updateTrMatrix();                            // _78
	virtual void inWaterCallback(WaterBox* wb);               // _84 (weak)
	virtual void outWaterCallback();                          // _88 (weak)
	virtual bool inWater();                                   // _8C (weak)
	virtual Vector3f* getSound_PosPtr();                      // _100 (weak)
	virtual void movieSetFaceDir(f32);                        // _128
	virtual void getVelocityAt(Vector3f&, Vector3f&);         // _184 (weak)
	// vtable 2 (MotionListener + self)
	// virtual void onKeyEvent(const SysShape::KeyEvent& event); // _1B8 thunk
	virtual int getDownfloorMass();                                                        // _1BC (weak)
	virtual bool isPikmin();                                                               // _1C0 (weak)
	virtual void doColorChange();                                                          // _1C4 (weak)
	virtual void doDebugDL();                                                              // _1C8 (weak)
	virtual void update();                                                                 // _1CC (weak)
	virtual void move(f32);                                                                // _1D0
	virtual bool useMoveRotation();                                                        // _1D4 (weak)
	virtual void setMoveRotation(bool);                                                    // _1D8 (weak)
	virtual bool useUpdateTrMatrix() { return !isFPFlag(FPFLAGS_UpdateTrMatrixDisabled); } // _1DC (weak)
	virtual void setUpdateTrMatrix(bool);                                                  // _1E0 (weak)
	virtual bool useMoveVelocity();                                                        // _1E4 (weak)
	virtual void setMoveVelocity(bool);                                                    // _1E8 (weak)
	virtual bool useMapCollision();                                                        // _1EC (weak)
	virtual void setMapCollision(bool);                                                    // _1F0 (weak)
	virtual bool isZikatu();                  // _1F4 (weak), is this a Wild Piki? (before type discovery, useless Pikmin)
	virtual void setZikatu(bool);             // _1F8 (weak)
	virtual bool wasZikatu();                 // _1FC (weak)
	virtual f32 getMapCollisionRadius();      // _200 (weak)
	virtual void wallCallback(Vector3<f32>&); // _204 (weak)
	virtual void startMotion(int anim1Idx, int anim2Idx, SysShape::MotionListener* ml1,
	                         SysShape::MotionListener* ml2);  // _208
	virtual void onKeyEvent(const SysShape::KeyEvent& event); // _20C (weak)
	virtual void updateLookCreature();                        // _210
	virtual void do_updateLookCreature();                     // _214
	virtual void onSetPosition() { }                          // _218 (weak)
	virtual bool isWalking();                                 // _21C (weak)

	bool assertMotion(int);

	void initFakePiki();
	void killFakePiki();

	void initAnimator();

	void initCaptureStomach();
	void startCaptureStomach(CollPart*);
	void endCaptureStomach();
	void updateStomach();

	void enableMotionBlend();
	void finishMotion();

	void setDoAnimCallback(IDelegate*);
	void clearDoAnimCallback();
	void updateWalkAnimation();

	void sNeckCallback(J3DJoint*, int);

	void startLookCreature(Creature*);
	void finishLook();
	void updateLook();

	void turnTo(Vector3f&);
	void moveRotation();
	void moveVelocity();

	bool debugShapeDL(char*);

	// _000      = VTBL
	// _000-_178 = Creature
	// _178-_17C = MotionListener
	BitFlag<u32> mFakePikiFlags;     // _17C
	f32 _180;                        // _180
	u32 _184;                        // _184
	IDelegate* mDoAnimCallback;      // _188
	short mRoomIndex;                // _18C
	WaterBox* mWaterBox;             // _190
	CollPart* mTargetCollObj;        // _194
	f32 mNeckTheta;                  // _198
	f32 mNeckPhi;                    // _19C
	Vector3f* mLookAtPosition;       // _1A0
	u8 _1A4;                         // _1A4
	Creature* mLookAtTargetCreature; // _1A8
	PikiAnimator mAnimator;          // _1AC
	Vector3f mVelocity;              // _1E4
	Vector3f _1F0;                   // _1F0
	f32 mFaceDir;                    // _1FC
	Vector3f mSimVelocity;           // _200
	Vector3f mPosition3;             // _20C, was mShadowParam.mPosition
	Sys::Sphere mBoundingSphere;     // _218, was mShadowParam.mBoundingSphere
	u32 mBoundAnimIdx;               // _228, current animIdx for held/bound object
	u8 _22C[8];                      // _22C
	f32 mAnimSpeed;                  // _234
	Vector3f _238;                   // _238
	f32 mFaceDirOffset;              // _244
	Sys::Triangle* _248;             // _248
	u32 _24C;                        // _24C, unknown
};

struct FakePikiParms : public CreatureParms {
	struct Parms : public Parameters {
		Parms(); // _(weak)

		// _DC-_E8 = Parameters
		Parm<f32> _0E8; // _0E8
		Parm<f32> _110; // _110
		Parm<f32> _138; // _138
		Parm<f32> _160; // _160
		Parm<f32> _188; // _188
		Parm<f32> _1B0; // _1B0
		Parm<f32> _1D8; // _1D8
		Parm<f32> _200; // _200
		Parm<f32> _228; // _228
		Parm<f32> _250; // _250
		                // _278 = IParameters ptr
	};

	FakePikiParms(); // (weak)

	virtual void read(Stream&); // _08 (weak)

	// _00-_D8 = CreatureParms
	// _D8 		 = VTBL
	Parms mFakePikiParms; // _DC
};

} // namespace Game

#endif
