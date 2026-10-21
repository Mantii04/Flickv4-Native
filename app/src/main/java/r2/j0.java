package r2;

import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import com.fasterxml.jackson.core.JsonPointer;

/* loaded from: classes.dex */
public final class j0 implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1562V f19790a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f19791b;

    public j0(Resources resources, InterfaceC1562V interfaceC1562V) {
        this.f19791b = resources;
        this.f19790a = interfaceC1562V;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Integer num, int i2, int i7, l2.q qVar) {
        Uri uri;
        Resources resources = this.f19791b;
        try {
            uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num.intValue()) + JsonPointer.SEPARATOR + resources.getResourceTypeName(num.intValue()) + JsonPointer.SEPARATOR + resources.getResourceEntryName(num.intValue()));
        } catch (Resources.NotFoundException e3) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e3);
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.f19790a.buildLoadData(uri, i2, i7, qVar);
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Integer num) {
        return true;
    }
}
