package r2;

import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import l2.InterfaceC1220a;
import o2.C1438l;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class n0 implements InterfaceC1220a {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1428b f19798a;

    public n0(InterfaceC1428b interfaceC1428b) {
        this.f19798a = interfaceC1428b;
    }

    @Override // l2.InterfaceC1220a
    public boolean encode(InputStream inputStream, File file, l2.q qVar) {
        InterfaceC1428b interfaceC1428b = this.f19798a;
        byte[] bArr = (byte[]) ((C1438l) interfaceC1428b).get(65536, byte[].class);
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                while (true) {
                    try {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        }
                        fileOutputStream2.write(bArr, 0, read);
                    } catch (IOException e3) {
                        e = e3;
                        fileOutputStream = fileOutputStream2;
                        if (Log.isLoggable("StreamEncoder", 3)) {
                            Log.d("StreamEncoder", "Failed to encode data onto the OutputStream", e);
                        }
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused) {
                            }
                        }
                        ((C1438l) interfaceC1428b).put(bArr);
                        return false;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException unused2) {
                            }
                        }
                        ((C1438l) interfaceC1428b).put(bArr);
                        throw th;
                    }
                }
                fileOutputStream2.close();
                try {
                    fileOutputStream2.close();
                } catch (IOException unused3) {
                }
                ((C1438l) interfaceC1428b).put(bArr);
                return true;
            } catch (IOException e7) {
                e = e7;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
