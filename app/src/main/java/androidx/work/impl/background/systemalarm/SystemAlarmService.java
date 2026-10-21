package androidx.work.impl.background.systemalarm;

import B1.t;
import E1.k;
import E1.m;
import L1.x;
import android.content.Intent;
import androidx.lifecycle.AbstractServiceC0565x;

/* loaded from: classes.dex */
public class SystemAlarmService extends AbstractServiceC0565x implements k {

    /* renamed from: j, reason: collision with root package name */
    public static final String f8298j = t.tagWithPrefix("SystemAlarmService");

    /* renamed from: e, reason: collision with root package name */
    public m f8299e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8300f;

    @Override // E1.k
    public void onAllCommandsCompleted() {
        this.f8300f = true;
        t.get().debug(f8298j, "All commands completed in dispatcher");
        x.checkWakeLocks();
        stopSelf();
    }

    @Override // androidx.lifecycle.AbstractServiceC0565x, android.app.Service
    public void onCreate() {
        super.onCreate();
        m mVar = new m(this);
        this.f8299e = mVar;
        if (mVar.f968r != null) {
            t.get().error(m.f959s, "A completion listener for SystemAlarmDispatcher already exists.");
        } else {
            mVar.f968r = this;
        }
        this.f8300f = false;
    }

    @Override // androidx.lifecycle.AbstractServiceC0565x, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f8300f = true;
        m mVar = this.f8299e;
        mVar.getClass();
        t.get().debug(m.f959s, "Destroying SystemAlarmDispatcher");
        mVar.f963j.removeExecutionListener(mVar);
        mVar.f968r = null;
    }

    @Override // androidx.lifecycle.AbstractServiceC0565x, android.app.Service
    public int onStartCommand(Intent intent, int i2, int i7) {
        super.onStartCommand(intent, i2, i7);
        if (this.f8300f) {
            t.get().info(f8298j, "Re-initializing SystemAlarmDispatcher after a request to shut-down.");
            m mVar = this.f8299e;
            mVar.getClass();
            t tVar = t.get();
            String str = m.f959s;
            tVar.debug(str, "Destroying SystemAlarmDispatcher");
            mVar.f963j.removeExecutionListener(mVar);
            mVar.f968r = null;
            m mVar2 = new m(this);
            this.f8299e = mVar2;
            if (mVar2.f968r != null) {
                t.get().error(str, "A completion listener for SystemAlarmDispatcher already exists.");
            } else {
                mVar2.f968r = this;
            }
            this.f8300f = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f8299e.add(intent, i7);
        return 3;
    }
}
