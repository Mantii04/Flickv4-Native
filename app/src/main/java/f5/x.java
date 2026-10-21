package f5;

import android.content.DialogInterface;
import flix.com.vision.tv.PlayerActivityLiveExternal;

/* loaded from: classes2.dex */
public final class x implements DialogInterface.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z f14412b;

    public x(z zVar) {
        this.f14412b = zVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public void onClick(DialogInterface dialogInterface, int i2) {
        PlayerActivityLiveExternal playerActivityLiveExternal = this.f14412b.f14413b;
        try {
            dialogInterface.dismiss();
        } catch (Exception unused) {
        }
        try {
            playerActivityLiveExternal.f16251y.stop();
            playerActivityLiveExternal.f16251y.release();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        super/*androidx.activity.ComponentActivity*/.onBackPressed();
    }
}
