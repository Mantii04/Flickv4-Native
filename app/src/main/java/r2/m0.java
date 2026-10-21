package r2;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import java.util.List;

/* loaded from: classes.dex */
public final class m0 implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19796a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1562V f19797b;

    public m0(Context context, InterfaceC1562V interfaceC1562V) {
        this.f19796a = context.getApplicationContext();
        this.f19797b = interfaceC1562V;
    }

    public static InterfaceC1563W newAssetFileDescriptorFactory(Context context) {
        return new k0(context);
    }

    public static InterfaceC1563W newStreamFactory(Context context) {
        return new l0(context);
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(Uri uri, int i2, int i7, l2.q qVar) {
        int parseInt;
        List<String> pathSegments = uri.getPathSegments();
        int size = pathSegments.size();
        InterfaceC1562V interfaceC1562V = this.f19797b;
        if (size == 1) {
            try {
                parseInt = Integer.parseInt(uri.getPathSegments().get(0));
            } catch (NumberFormatException e3) {
                if (Log.isLoggable("ResourceUriLoader", 5)) {
                    Log.w("ResourceUriLoader", "Failed to parse resource id from: " + uri, e3);
                }
            }
            if (parseInt != 0) {
                return interfaceC1562V.buildLoadData(Integer.valueOf(parseInt), i2, i7, qVar);
            }
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                Log.w("ResourceUriLoader", "Failed to parse a valid non-0 resource id from: " + uri);
                return null;
            }
            return null;
        }
        if (pathSegments.size() != 2) {
            if (Log.isLoggable("ResourceUriLoader", 5)) {
                Log.w("ResourceUriLoader", "Failed to parse resource uri: " + uri);
            }
            return null;
        }
        List<String> pathSegments2 = uri.getPathSegments();
        String str = pathSegments2.get(0);
        String str2 = pathSegments2.get(1);
        Context context = this.f19796a;
        int identifier = context.getResources().getIdentifier(str2, str, context.getPackageName());
        if (identifier != 0) {
            return interfaceC1562V.buildLoadData(Integer.valueOf(identifier), i2, i7, qVar);
        }
        if (Log.isLoggable("ResourceUriLoader", 5)) {
            Log.w("ResourceUriLoader", "Failed to find resource id for: " + uri);
        }
        return null;
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(Uri uri) {
        return "android.resource".equals(uri.getScheme()) && this.f19796a.getPackageName().equals(uri.getAuthority());
    }
}
