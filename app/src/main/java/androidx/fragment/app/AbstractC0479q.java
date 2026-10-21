package androidx.fragment.app;

/* renamed from: androidx.fragment.app.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0479q {

    /* renamed from: a, reason: collision with root package name */
    public final L0 f6283a;

    /* renamed from: b, reason: collision with root package name */
    public final I.f f6284b;

    public AbstractC0479q(L0 l02, I.f fVar) {
        this.f6283a = l02;
        this.f6284b = fVar;
    }

    public final void a() {
        this.f6283a.completeSpecialEffect(this.f6284b);
    }

    public final boolean b() {
        L0 l02 = this.f6283a;
        SpecialEffectsController$Operation$State e3 = SpecialEffectsController$Operation$State.e(l02.getFragment().f6068Q);
        SpecialEffectsController$Operation$State finalState = l02.getFinalState();
        if (e3 == finalState) {
            return true;
        }
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.f6161e;
        return (e3 == specialEffectsController$Operation$State || finalState == specialEffectsController$Operation$State) ? false : true;
    }
}
