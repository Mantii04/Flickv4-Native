package b1;

import S0.o;
import S0.r;
import S0.s;
import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import java.util.ArrayList;

/* renamed from: b1.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0638j implements s {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f8386a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final C0630b f8387b = new C0630b();

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 1;
    }

    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<S0.c> consumer) {
        C0632d parseCue;
        ParsableByteArray parsableByteArray = this.f8386a;
        parsableByteArray.reset(bArr, i7 + i2);
        parsableByteArray.setPosition(i2);
        ArrayList arrayList = new ArrayList();
        try {
            AbstractC0639k.validateWebvttHeaderLine(parsableByteArray);
            while (!TextUtils.isEmpty(parsableByteArray.readLine())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                char c7 = 65535;
                int i8 = 0;
                while (c7 == 65535) {
                    i8 = parsableByteArray.getPosition();
                    String readLine = parsableByteArray.readLine();
                    c7 = readLine == null ? (char) 0 : "STYLE".equals(readLine) ? (char) 2 : readLine.startsWith("NOTE") ? (char) 1 : (char) 3;
                }
                parsableByteArray.setPosition(i8);
                if (c7 == 0) {
                    S0.f.toCuesWithTiming(new C0640l(arrayList2), rVar, consumer);
                    return;
                }
                if (c7 == 1) {
                    while (!TextUtils.isEmpty(parsableByteArray.readLine())) {
                    }
                } else if (c7 == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new IllegalArgumentException("A style block was found after the first cue.");
                    }
                    parsableByteArray.readLine();
                    arrayList.addAll(this.f8387b.parseBlock(parsableByteArray));
                } else if (c7 == 3 && (parseCue = AbstractC0637i.parseCue(parsableByteArray, arrayList)) != null) {
                    arrayList2.add(parseCue);
                }
            }
        } catch (ParserException e3) {
            throw new IllegalArgumentException(e3);
        }
    }

    @Override // S0.s
    public final /* synthetic */ S0.i parseToLegacySubtitle(byte[] bArr, int i2, int i7) {
        return o.a(this, bArr, i2, i7);
    }

    @Override // S0.s
    public final /* synthetic */ void reset() {
        o.b(this);
    }
}
