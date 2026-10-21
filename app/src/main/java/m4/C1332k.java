package m4;

import android.content.Context;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.squareup.picasso.Picasso$LoadedFrom;
import java.io.IOException;

/* renamed from: m4.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C1332k extends L {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18684a;

    public C1332k(Context context) {
        this.f18684a = context;
    }

    @Override // m4.L
    public boolean canHandleRequest(I i2) {
        return FirebaseAnalytics.Param.CONTENT.equals(i2.f18620a.getScheme());
    }

    @Override // m4.L
    public K load(I i2, int i7) throws IOException {
        return new K(e6.w.source(this.f18684a.getContentResolver().openInputStream(i2.f18620a)), Picasso$LoadedFrom.DISK);
    }
}
