#ifndef _JSYSTEM_J2D_J2DCOLORBLOCK_H
#define _JSYSTEM_J2D_J2DCOLORBLOCK_H

#include "Dolphin/gx.h"
#include "JSystem/J2D/J2DTypes.h"
#include "JSystem/JUT/TColor.h"
#include "types.h"

// NB: TP has this rolled into the J2DColorBlock struct as private members
// (then the J2DColorBlock stuff as public after it)
struct _J2DColorBlockParent {
	inline _J2DColorBlockParent() { }

	JUtility::TColor m_colors[2]; // _00
	u8 m_channelCount;            // _08
	J2DColorChan m_channels[4];   // _0A
	u8 m_cullMode;                // _12 - _GXCullMode
};

struct J2DColorBlock : _J2DColorBlockParent {
	/** @fabricated */
	inline J2DColorBlock() { initialize(); }

	virtual ~J2DColorBlock() { } // _08 (weak)

	void initialize();
	void setGX();

	inline JUtility::TColor* getMatColor(u32 i) { return &m_colors[i]; }
	inline J2DColorChan* getColorChan(u32 i) { return &m_channels[i]; }
	inline void setCullMode(u8 mode) { m_cullMode = mode; }

	// _00-_14 = _J2DColorBlockParent
	// _14 VTBL
};

#endif
