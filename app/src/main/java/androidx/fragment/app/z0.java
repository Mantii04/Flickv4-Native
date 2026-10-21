package androidx.fragment.app;

import android.transition.Transition;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class z0 implements Transition.TransitionListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f6373a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6374b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6375c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6376d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6377e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ArrayList f6378f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C0 f6379g;

    public z0(C0 c02, Object obj, ArrayList arrayList, Object obj2, ArrayList arrayList2, Object obj3, ArrayList arrayList3) {
        this.f6379g = c02;
        this.f6373a = obj;
        this.f6374b = arrayList;
        this.f6375c = obj2;
        this.f6376d = arrayList2;
        this.f6377e = obj3;
        this.f6378f = arrayList3;
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionCancel(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionEnd(Transition transition) {
        transition.removeListener(this);
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionPause(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionResume(Transition transition) {
    }

    @Override // android.transition.Transition.TransitionListener
    public void onTransitionStart(Transition transition) {
        C0 c02 = this.f6379g;
        Object obj = this.f6373a;
        if (obj != null) {
            c02.replaceTargets(obj, this.f6374b, null);
        }
        Object obj2 = this.f6375c;
        if (obj2 != null) {
            c02.replaceTargets(obj2, this.f6376d, null);
        }
        Object obj3 = this.f6377e;
        if (obj3 != null) {
            c02.replaceTargets(obj3, this.f6378f, null);
        }
    }
}
