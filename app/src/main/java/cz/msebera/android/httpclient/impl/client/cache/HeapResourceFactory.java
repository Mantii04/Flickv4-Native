package cz.msebera.android.httpclient.impl.client.cache;

import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.client.cache.InputLimit;
import cz.msebera.android.httpclient.client.cache.Resource;
import cz.msebera.android.httpclient.client.cache.ResourceFactory;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class HeapResourceFactory implements ResourceFactory {
    @Override // cz.msebera.android.httpclient.client.cache.ResourceFactory
    public Resource copy(String str, Resource resource) throws IOException {
        byte[] byteArray;
        if (resource instanceof HeapResource) {
            byteArray = ((HeapResource) resource).getByteArray();
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            IOUtils.copyAndClose(resource.getInputStream(), byteArrayOutputStream);
            byteArray = byteArrayOutputStream.toByteArray();
        }
        return createResource(byteArray);
    }

    public Resource createResource(byte[] bArr) {
        return new HeapResource(bArr);
    }

    @Override // cz.msebera.android.httpclient.client.cache.ResourceFactory
    public Resource generate(String str, InputStream inputStream, InputLimit inputLimit) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[2048];
        long j7 = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read == -1) {
                break;
            }
            byteArrayOutputStream.write(bArr, 0, read);
            j7 += read;
            if (inputLimit != null && j7 > inputLimit.getValue()) {
                inputLimit.reached();
                break;
            }
        }
        return createResource(byteArrayOutputStream.toByteArray());
    }
}
