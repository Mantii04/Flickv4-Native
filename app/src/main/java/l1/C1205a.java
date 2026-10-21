package l1;

import android.content.res.AssetManager;
import android.os.Build;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import java.util.concurrent.Executor;

/* renamed from: l1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1205a {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f18073a;

    /* renamed from: b, reason: collision with root package name */
    public final Executor f18074b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1210f f18075c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f18076d;

    /* renamed from: e, reason: collision with root package name */
    public final File f18077e;

    /* renamed from: f, reason: collision with root package name */
    public final String f18078f;

    /* renamed from: g, reason: collision with root package name */
    public final String f18079g;

    /* renamed from: h, reason: collision with root package name */
    public final String f18080h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f18081i = false;

    /* renamed from: j, reason: collision with root package name */
    public C1206b[] f18082j;

    /* renamed from: k, reason: collision with root package name */
    public byte[] f18083k;

    public C1205a(AssetManager assetManager, Executor executor, InterfaceC1210f interfaceC1210f, String str, String str2, String str3, File file) {
        this.f18073a = assetManager;
        this.f18074b = executor;
        this.f18075c = interfaceC1210f;
        this.f18078f = str;
        this.f18079g = str2;
        this.f18080h = str3;
        this.f18077e = file;
        int i2 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i2 >= 24 && i2 <= 33) {
            switch (i2) {
                case 24:
                case 25:
                    bArr = AbstractC1219o.f18108e;
                    break;
                case 26:
                    bArr = AbstractC1219o.f18107d;
                    break;
                case 27:
                    bArr = AbstractC1219o.f18106c;
                    break;
                case 28:
                case 29:
                case 30:
                    bArr = AbstractC1219o.f18105b;
                    break;
                case 31:
                case 32:
                case 33:
                    bArr = AbstractC1219o.f18104a;
                    break;
            }
        }
        this.f18076d = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e3) {
            String message = e3.getMessage();
            if (message != null && message.contains("compressed")) {
                this.f18075c.onDiagnosticReceived(5, null);
            }
            return null;
        }
    }

    public final void b(int i2, Serializable serializable) {
        this.f18074b.execute(new androidx.media3.common.util.d(this, i2, serializable, 2));
    }

    public boolean deviceAllowsProfileInstallerAotWrites() {
        if (this.f18076d == null) {
            b(3, Integer.valueOf(Build.VERSION.SDK_INT));
            return false;
        }
        if (this.f18077e.canWrite()) {
            this.f18081i = true;
            return true;
        }
        b(4, null);
        return false;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:5|(2:6|7)|8|9|(3:50|51|(4:53|54|55|56)(2:60|61))|11|(5:(1:20)|21|22|(3:29|30|(3:32|33|34)(2:35|36))(1:(1:25))|(1:27))) */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x005d, code lost:
    
        r5 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x005e, code lost:
    
        r1.onResultReceived(7, r5);
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00df A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0096 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public l1.C1205a read() {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l1.C1205a.read():l1.a");
    }

    public C1205a transcodeIfNeeded() {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream;
        InterfaceC1210f interfaceC1210f = this.f18075c;
        C1206b[] c1206bArr = this.f18082j;
        if (c1206bArr == null || (bArr = this.f18076d) == null) {
            return this;
        }
        if (!this.f18081i) {
            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
        }
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(androidx.profileinstaller.a.f7970a);
                byteArrayOutputStream.write(bArr);
            } catch (Throwable th) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e3) {
            interfaceC1210f.onResultReceived(7, e3);
        } catch (IllegalStateException e7) {
            interfaceC1210f.onResultReceived(8, e7);
        }
        if (androidx.profileinstaller.a.i(byteArrayOutputStream, bArr, c1206bArr)) {
            this.f18083k = byteArrayOutputStream.toByteArray();
            byteArrayOutputStream.close();
            this.f18082j = null;
            return this;
        }
        interfaceC1210f.onResultReceived(5, null);
        this.f18082j = null;
        byteArrayOutputStream.close();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean write() {
        byte[] bArr = this.f18083k;
        if (bArr != null) {
            if (!this.f18081i) {
                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
            }
            try {
                try {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(this.f18077e);
                        try {
                            byte[] bArr2 = new byte[512];
                            while (true) {
                                int read = byteArrayInputStream.read(bArr2);
                                if (read <= 0) {
                                    b(1, null);
                                    fileOutputStream.close();
                                    byteArrayInputStream.close();
                                    return true;
                                }
                                fileOutputStream.write(bArr2, 0, read);
                            }
                        } finally {
                        }
                    } catch (Throwable th) {
                        try {
                            byteArrayInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } finally {
                    this.f18083k = null;
                    this.f18082j = null;
                }
            } catch (FileNotFoundException e3) {
                b(6, e3);
                return false;
            } catch (IOException e7) {
                b(7, e7);
                return false;
            }
        }
        return false;
    }
}
