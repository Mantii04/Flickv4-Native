package j2;

import cz.msebera.android.httpclient.message.TokenParser;
import java.io.File;
import java.io.IOException;
import org.apache.commons.lang3.ClassUtils;

/* renamed from: j2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1043d {

    /* renamed from: a, reason: collision with root package name */
    public final String f16949a;

    /* renamed from: b, reason: collision with root package name */
    public final long[] f16950b;

    /* renamed from: c, reason: collision with root package name */
    public final File[] f16951c;

    /* renamed from: d, reason: collision with root package name */
    public final File[] f16952d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f16953e;

    /* renamed from: f, reason: collision with root package name */
    public C1042c f16954f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C1045f f16955g;

    public C1043d(C1045f c1045f, String str) {
        this.f16955g = c1045f;
        this.f16949a = str;
        int i2 = c1045f.f16963p;
        this.f16950b = new long[i2];
        this.f16951c = new File[i2];
        this.f16952d = new File[i2];
        StringBuilder sb = new StringBuilder(str);
        sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
        int length = sb.length();
        for (int i7 = 0; i7 < c1045f.f16963p; i7++) {
            sb.append(i7);
            File[] fileArr = this.f16951c;
            String sb2 = sb.toString();
            File file = c1045f.f16957b;
            fileArr[i7] = new File(file, sb2);
            sb.append(".tmp");
            this.f16952d[i7] = new File(file, sb.toString());
            sb.setLength(length);
        }
    }

    public File getCleanFile(int i2) {
        return this.f16951c[i2];
    }

    public File getDirtyFile(int i2) {
        return this.f16952d[i2];
    }

    public String getLengths() throws IOException {
        StringBuilder sb = new StringBuilder();
        for (long j7 : this.f16950b) {
            sb.append(TokenParser.SP);
            sb.append(j7);
        }
        return sb.toString();
    }
}
