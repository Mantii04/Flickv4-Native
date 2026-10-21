package d2;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.airbnb.lottie.model.DocumentData$Justification;
import e2.C0853a;
import java.io.IOException;

/* renamed from: d2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0799h implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public static final C0799h f13549a = new C0799h();

    /* renamed from: b, reason: collision with root package name */
    public static final C0853a f13550b = C0853a.of("t", "f", CmcdData.STREAMING_FORMAT_SS, "j", "tr", "lh", "ls", "fc", "sc", "sw", "of");

    @Override // d2.InterfaceC0791H
    public Y1.b parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        DocumentData$Justification documentData$Justification = DocumentData$Justification.f9027b;
        aVar.beginObject();
        DocumentData$Justification documentData$Justification2 = documentData$Justification;
        String str = null;
        String str2 = null;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        float f10 = 0.0f;
        int i2 = 0;
        int i7 = 0;
        int i8 = 0;
        boolean z6 = true;
        while (aVar.hasNext()) {
            switch (aVar.selectName(f13550b)) {
                case 0:
                    str = aVar.nextString();
                    break;
                case 1:
                    str2 = aVar.nextString();
                    break;
                case 2:
                    f7 = (float) aVar.nextDouble();
                    break;
                case 3:
                    int nextInt = aVar.nextInt();
                    if (nextInt <= 2 && nextInt >= 0) {
                        documentData$Justification2 = DocumentData$Justification.values()[nextInt];
                        break;
                    } else {
                        documentData$Justification2 = documentData$Justification;
                        break;
                    }
                case 4:
                    i2 = aVar.nextInt();
                    break;
                case 5:
                    f8 = (float) aVar.nextDouble();
                    break;
                case 6:
                    f9 = (float) aVar.nextDouble();
                    break;
                case 7:
                    i7 = p.a(aVar);
                    break;
                case 8:
                    i8 = p.a(aVar);
                    break;
                case 9:
                    f10 = (float) aVar.nextDouble();
                    break;
                case 10:
                    z6 = aVar.nextBoolean();
                    break;
                default:
                    aVar.skipName();
                    aVar.skipValue();
                    break;
            }
        }
        aVar.endObject();
        return new Y1.b(str, str2, f7, documentData$Justification2, i2, f8, f9, i7, i8, f10, z6);
    }
}
