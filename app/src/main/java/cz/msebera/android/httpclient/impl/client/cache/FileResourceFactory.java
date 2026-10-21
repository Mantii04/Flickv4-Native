package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.cache.Resource;
import cz.msebera.android.httpclient.client.cache.ResourceFactory;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.commons.lang3.ClassUtils;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class FileResourceFactory implements ResourceFactory {
    private final File cacheDir;
    private final BasicIdGenerator idgen = new BasicIdGenerator();

    public FileResourceFactory(File file) {
        this.cacheDir = file;
    }

    private File generateUniqueCacheFile(String str) {
        StringBuilder sb = new StringBuilder();
        this.idgen.generate(sb);
        sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        int min = Math.min(str.length(), 100);
        for (int i2 = 0; i2 < min; i2++) {
            char charAt = str.charAt(i2);
            if (Character.isLetterOrDigit(charAt) || charAt == '.') {
                sb.append(charAt);
            } else {
                sb.append('-');
            }
        }
        return new File(this.cacheDir, sb.toString());
    }

    @Override // cz.msebera.android.httpclient.client.cache.ResourceFactory
    public Resource copy(String str, Resource resource) throws IOException {
        File generateUniqueCacheFile = generateUniqueCacheFile(str);
        if (resource instanceof FileResource) {
            IOUtils.copyFile(((FileResource) resource).getFile(), generateUniqueCacheFile);
        } else {
            IOUtils.copyAndClose(resource.getInputStream(), new FileOutputStream(generateUniqueCacheFile));
        }
        return new FileResource(generateUniqueCacheFile);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0026, code lost:
    
        r9.reached();
     */
    @Override // cz.msebera.android.httpclient.client.cache.ResourceFactory
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public cz.msebera.android.httpclient.client.cache.Resource generate(java.lang.String r7, java.io.InputStream r8, cz.msebera.android.httpclient.client.cache.InputLimit r9) throws java.io.IOException {
        /*
            r6 = this;
            java.io.File r7 = r6.generateUniqueCacheFile(r7)
            java.io.FileOutputStream r0 = new java.io.FileOutputStream
            r0.<init>(r7)
            r1 = 2048(0x800, float:2.87E-42)
            byte[] r1 = new byte[r1]     // Catch: java.lang.Throwable -> L2a
            r2 = 0
        Lf:
            int r4 = r8.read(r1)     // Catch: java.lang.Throwable -> L2a
            r5 = -1
            if (r4 == r5) goto L2c
            r5 = 0
            r0.write(r1, r5, r4)     // Catch: java.lang.Throwable -> L2a
            long r4 = (long) r4     // Catch: java.lang.Throwable -> L2a
            long r2 = r2 + r4
            if (r9 == 0) goto Lf
            long r4 = r9.getValue()     // Catch: java.lang.Throwable -> L2a
            int r4 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r4 <= 0) goto Lf
            r9.reached()     // Catch: java.lang.Throwable -> L2a
            goto L2c
        L2a:
            r7 = move-exception
            goto L35
        L2c:
            r0.close()
            cz.msebera.android.httpclient.impl.client.cache.FileResource r8 = new cz.msebera.android.httpclient.impl.client.cache.FileResource
            r8.<init>(r7)
            return r8
        L35:
            r0.close()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: cz.msebera.android.httpclient.impl.client.cache.FileResourceFactory.generate(java.lang.String, java.io.InputStream, cz.msebera.android.httpclient.client.cache.InputLimit):cz.msebera.android.httpclient.client.cache.Resource");
    }
}
