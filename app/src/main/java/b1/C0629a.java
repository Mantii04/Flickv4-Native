package b1;

import P3.v;
import S0.o;
import S0.r;
import S0.s;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* renamed from: b1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0629a implements s {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f8337a = new ParsableByteArray();

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 2;
    }

    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<S0.c> consumer) {
        ParsableByteArray parsableByteArray = this.f8337a;
        parsableByteArray.reset(bArr, i7 + i2);
        parsableByteArray.setPosition(i2);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.bytesLeft() > 0) {
            v.checkArgument(parsableByteArray.bytesLeft() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1987343459) {
                int i8 = readInt - 8;
                CharSequence charSequence = null;
                Cue.Builder builder = null;
                while (i8 > 0) {
                    v.checkArgument(i8 >= 8, "Incomplete vtt cue box header found.");
                    int readInt2 = parsableByteArray.readInt();
                    int readInt3 = parsableByteArray.readInt();
                    int i9 = readInt2 - 8;
                    String fromUtf8Bytes = Util.fromUtf8Bytes(parsableByteArray.getData(), parsableByteArray.getPosition(), i9);
                    parsableByteArray.skipBytes(i9);
                    i8 = (i8 - 8) - i9;
                    if (readInt3 == 1937011815) {
                        Pattern pattern = AbstractC0637i.f8382a;
                        C0636h c0636h = new C0636h();
                        AbstractC0637i.e(fromUtf8Bytes, c0636h);
                        builder = c0636h.toCueBuilder();
                    } else if (readInt3 == 1885436268) {
                        charSequence = AbstractC0637i.f(null, fromUtf8Bytes.trim(), Collections.EMPTY_LIST);
                    }
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                arrayList.add(builder != null ? builder.setText(charSequence).build() : AbstractC0637i.newCueForText(charSequence));
            } else {
                parsableByteArray.skipBytes(readInt - 8);
            }
        }
        consumer.accept(new S0.c(arrayList, C.TIME_UNSET, C.TIME_UNSET));
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
