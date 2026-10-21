package v0;

import android.net.Uri;
import androidx.media3.common.FileTypes;
import androidx.media3.common.util.TimestampAdjuster;
import c1.C0679I;
import c1.C0688S;
import c1.C0696a;
import c1.C0698c;
import c1.C0700e;
import c1.C0702g;
import com.google.common.collect.ImmutableList;
import e1.C0852a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import w0.C1774a;
import y0.C1869a;
import z0.C1978a;

/* renamed from: v0.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1739x implements I {

    /* renamed from: q, reason: collision with root package name */
    public static final int[] f20561q = {5, 4, 12, 8, 3, 10, 9, 11, 6, 2, 0, 1, 7, 16, 15, 14, 17, 18, 19, 20, 21};

    /* renamed from: r, reason: collision with root package name */
    public static final C1738w f20562r = new C1738w(new androidx.media3.exoplayer.source.chunk.a(10));

    /* renamed from: s, reason: collision with root package name */
    public static final C1738w f20563s = new C1738w(new androidx.media3.exoplayer.source.chunk.a(11));

    /* renamed from: b, reason: collision with root package name */
    public int f20564b;

    /* renamed from: e, reason: collision with root package name */
    public ImmutableList f20565e;

    /* renamed from: m, reason: collision with root package name */
    public int f20568m;

    /* renamed from: n, reason: collision with root package name */
    public int f20569n;

    /* renamed from: p, reason: collision with root package name */
    public int f20570p;

    /* renamed from: j, reason: collision with root package name */
    public S0.q f20567j = new S0.e();

    /* renamed from: f, reason: collision with root package name */
    public boolean f20566f = true;

    public final void a(int i2, ArrayList arrayList) {
        switch (i2) {
            case 0:
                arrayList.add(new C0696a());
                break;
            case 1:
                arrayList.add(new C0698c());
                break;
            case 2:
                arrayList.add(new C0700e(0));
                break;
            case 3:
                arrayList.add(new C1774a(0));
                break;
            case 4:
                C extractor = f20562r.getExtractor(0);
                if (extractor == null) {
                    arrayList.add(new A0.d(0));
                    break;
                } else {
                    arrayList.add(extractor);
                    break;
                }
            case 5:
                arrayList.add(new B0.b());
                break;
            case 6:
                arrayList.add(new N0.h(this.f20567j, this.f20566f ? 0 : 2));
                break;
            case 7:
                arrayList.add(new O0.e(0));
                break;
            case 8:
                arrayList.add(new P0.u(this.f20567j, P0.u.codecsToParseWithinGopSampleDependenciesAsFlags(this.f20568m) | (this.f20566f ? 0 : 32)));
                arrayList.add(new P0.B(this.f20567j, (this.f20566f ? 0 : 16) | this.f20564b | P0.B.codecsToParseWithinGopSampleDependenciesAsFlags(this.f20568m)));
                break;
            case 9:
                arrayList.add(new Q0.e());
                break;
            case 10:
                arrayList.add(new C0679I());
                break;
            case 11:
                if (this.f20565e == null) {
                    this.f20565e = ImmutableList.of();
                }
                arrayList.add(new C0688S(1, !this.f20566f ? 1 : 0, this.f20567j, new TimestampAdjuster(0L), new C0702g(0, this.f20565e), 112800));
                break;
            case 12:
                arrayList.add(new d1.d());
                break;
            case 14:
                arrayList.add(new D0.a(this.f20569n));
                break;
            case 15:
                C extractor2 = f20563s.getExtractor(new Object[0]);
                if (extractor2 != null) {
                    arrayList.add(extractor2);
                    break;
                }
                break;
            case 16:
                arrayList.add(new x0.d(1 ^ (this.f20566f ? 1 : 0), this.f20567j));
                break;
            case 17:
                arrayList.add(new R0.a());
                break;
            case 18:
                arrayList.add(new C0852a());
                break;
            case 19:
                arrayList.add(new C1978a());
                break;
            case 20:
                arrayList.add(new C0.b(this.f20570p));
                break;
            case 21:
                arrayList.add(new C1869a());
                break;
        }
    }

    @Override // v0.I
    public synchronized C[] createExtractors() {
        return createExtractors(Uri.EMPTY, new HashMap());
    }

    public synchronized C1739x setHeifExtractorFlags(int i2) {
        this.f20570p = i2;
        return this;
    }

    public synchronized C1739x setJpegExtractorFlags(int i2) {
        this.f20569n = i2;
        return this;
    }

    public synchronized C1739x setMp4ExtractorFlags(int i2) {
        this.f20564b = i2;
        return this;
    }

    @Override // v0.I
    public synchronized C[] createExtractors(Uri uri, Map<String, List<String>> map) {
        ArrayList arrayList;
        try {
            int[] iArr = f20561q;
            arrayList = new ArrayList(21);
            int inferFileTypeFromResponseHeaders = FileTypes.inferFileTypeFromResponseHeaders(map);
            if (inferFileTypeFromResponseHeaders != -1) {
                a(inferFileTypeFromResponseHeaders, arrayList);
            }
            int inferFileTypeFromUri = FileTypes.inferFileTypeFromUri(uri);
            if (inferFileTypeFromUri != -1 && inferFileTypeFromUri != inferFileTypeFromResponseHeaders) {
                a(inferFileTypeFromUri, arrayList);
            }
            for (int i2 = 0; i2 < 21; i2++) {
                int i7 = iArr[i2];
                if (i7 != inferFileTypeFromResponseHeaders && i7 != inferFileTypeFromUri) {
                    a(i7, arrayList);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return (C[]) arrayList.toArray(new C[0]);
    }

    @Override // v0.I
    public synchronized C1739x experimentalSetCodecsToParseWithinGopSampleDependencies(int i2) {
        this.f20568m = i2;
        return this;
    }

    @Override // v0.I
    @Deprecated
    public synchronized C1739x experimentalSetTextTrackTranscodingEnabled(boolean z6) {
        this.f20566f = z6;
        return this;
    }

    @Override // v0.I
    public synchronized C1739x setSubtitleParserFactory(S0.q qVar) {
        this.f20567j = qVar;
        return this;
    }
}
