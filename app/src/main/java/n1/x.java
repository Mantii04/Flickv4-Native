package n1;

/* loaded from: classes.dex */
public final class x extends AbstractBinderC1370i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ z f18864a;

    public x(z zVar) {
        this.f18864a = zVar;
    }

    @Override // n1.InterfaceC1371j
    public void onInvalidation(String[] tables) {
        kotlin.jvm.internal.j.checkNotNullParameter(tables, "tables");
        z zVar = this.f18864a;
        zVar.getExecutor().execute(new flix.com.vision.activities.leanback.fragment.a(13, zVar, tables));
    }
}
