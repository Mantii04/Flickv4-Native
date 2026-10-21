package N0;

import androidx.media3.common.ParserException;
import java.io.IOException;
import v0.D;

/* loaded from: classes.dex */
public final class d implements c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f2154a;

    public d(h hVar) {
        this.f2154a = hVar;
    }

    public void binaryElement(int i2, int i7, D d7) throws IOException {
        this.f2154a.binaryElement(i2, i7, d7);
    }

    public void endMasterElement(int i2) throws ParserException {
        this.f2154a.endMasterElement(i2);
    }

    public void floatElement(int i2, double d7) throws ParserException {
        this.f2154a.floatElement(i2, d7);
    }

    public int getElementType(int i2) {
        return this.f2154a.getElementType(i2);
    }

    public void integerElement(int i2, long j7) throws ParserException {
        this.f2154a.integerElement(i2, j7);
    }

    public boolean isLevel1Element(int i2) {
        return this.f2154a.isLevel1Element(i2);
    }

    public void startMasterElement(int i2, long j7, long j8) throws ParserException {
        this.f2154a.startMasterElement(i2, j7, j8);
    }

    public void stringElement(int i2, String str) throws ParserException {
        this.f2154a.stringElement(i2, str);
    }
}
