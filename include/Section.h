#ifndef _SECTION_H
#define _SECTION_H

#include "JSystem/JKernel/JKRDisposer.h"
#include "wipe.h"

struct Graphics;
struct JFWDisplay;
struct JKRHeap;
struct JUTFader;

struct ISection : public JKRDisposer {
	virtual ~ISection();              // _08 (weak)
	virtual void run()           = 0; // _0C
	virtual bool update()        = 0; // _10
	virtual void draw(Graphics&) = 0; // _14
	virtual void init()          = 0; // _18
};

struct ISectionMgr {
	ISectionMgr() { }

	virtual void run() = 0;                                   // _08
	virtual ISection* getCurrentSection() { return nullptr; } // _0C (weak)
};

struct Section : public ISection {
	enum EDrawInitMode { Zero = 0, One = 1, Two = 2 };

	Section(JFWDisplay*, JKRHeap*, bool);

	virtual ~Section();                              // _08
	virtual void run();                              // _0C
	virtual bool update();                           // _10
	virtual void draw(Graphics&);                    // _14
	virtual void init();                             // _18
	virtual void drawInit(Graphics&);                // _1C (weak)
	virtual void drawInit(Graphics&, EDrawInitMode); // _20 (weak)
	virtual void doExit();                           // _24 (weak)
	virtual bool forceFinish();                      // _28 (weak)
	virtual bool forceReset();                       // _2C (weak)
	virtual Section* getCurrentSection();            // _30 (weak)
	virtual void doLoadingStart();                   // _34 (weak)
	virtual bool doLoading();                        // _38 (weak)
	virtual bool doUpdate()            = 0;          // _3C
	virtual void doDraw(Graphics& gfx) = 0;          // _40
	virtual bool isFinishable();                     // _44 (weak)

	bool beginFrame();
	void beginRender();
	void endFrame();
	void endRender();
	void exit();

	void loading();
	void fadeIn();
	void main();
	void fadeOut();

	WipeBase* mDisplayWiper; // _18
	JKRHeap* mDisplayHeap;   // _1C
	JKRHeap* mOldHeap;       // _20
	JFWDisplay* mDisplay;    // _24
	JUTFader* mFader;        // _28
	Graphics* mGraphics;     // _2C
	f32 mTimeStep;           // _30
	bool mIsMainActive;      // _34
	bool mIsDisplayNew;      // _35
	u8 _36;                  // _36
	bool mIsLoadingDVD;      // _37
	u8 _38;                  // _38
};

#endif
