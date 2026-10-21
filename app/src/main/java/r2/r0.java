package r2;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;

/* loaded from: classes.dex */
public final class r0 implements InterfaceC1562V {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1562V f19802a;

    public r0(InterfaceC1562V interfaceC1562V) {
        this.f19802a = interfaceC1562V;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(String str, int i2, int i7, l2.q qVar) {
        Uri fromFile;
        if (TextUtils.isEmpty(str)) {
            fromFile = null;
        } else if (str.charAt(0) == '/') {
            fromFile = Uri.fromFile(new File(str));
        } else {
            Uri parse = Uri.parse(str);
            fromFile = parse.getScheme() == null ? Uri.fromFile(new File(str)) : parse;
        }
        if (fromFile != null) {
            InterfaceC1562V interfaceC1562V = this.f19802a;
            if (interfaceC1562V.handles(fromFile)) {
                return interfaceC1562V.buildLoadData(fromFile, i2, i7, qVar);
            }
        }
        return null;
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(String str) {
        return true;
    }
}
