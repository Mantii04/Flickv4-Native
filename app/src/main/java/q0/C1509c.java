package q0;

import android.os.Build;
import android.support.v4.media.session.MediaSessionCompat;
import android.widget.RemoteViews;
import z.C;
import z.InterfaceC1976w;
import z.M;

/* renamed from: q0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1509c extends C {

    /* renamed from: b, reason: collision with root package name */
    public int[] f19548b = null;

    /* renamed from: c, reason: collision with root package name */
    public MediaSessionCompat.Token f19549c;

    @Override // z.C
    public void apply(InterfaceC1976w interfaceC1976w) {
        if (Build.VERSION.SDK_INT >= 34) {
            AbstractC1507a.d(((M) interfaceC1976w).getBuilder(), AbstractC1507a.b(AbstractC1508b.a(AbstractC1507a.a(), null, 0, null, Boolean.FALSE), this.f19548b, this.f19549c));
        } else {
            AbstractC1507a.d(((M) interfaceC1976w).getBuilder(), AbstractC1507a.b(AbstractC1507a.a(), this.f19548b, this.f19549c));
        }
    }

    @Override // z.C
    public RemoteViews makeBigContentView(InterfaceC1976w interfaceC1976w) {
        return null;
    }

    @Override // z.C
    public RemoteViews makeContentView(InterfaceC1976w interfaceC1976w) {
        return null;
    }

    public C1509c setMediaSession(MediaSessionCompat.Token token) {
        this.f19549c = token;
        return this;
    }

    public C1509c setShowActionsInCompactView(int... iArr) {
        this.f19548b = iArr;
        return this;
    }
}
