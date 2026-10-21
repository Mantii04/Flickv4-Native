package Z0;

import A.i;
import P3.v;
import S0.c;
import S0.o;
import S0.r;
import S0.s;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* loaded from: classes.dex */
public final class a implements s {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f4442a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final boolean f4443b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4444c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4445d;

    /* renamed from: e, reason: collision with root package name */
    public final String f4446e;

    /* renamed from: f, reason: collision with root package name */
    public final float f4447f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4448g;

    public a(List<byte[]> list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (list.get(0).length != 48 && list.get(0).length != 53)) {
            this.f4444c = 0;
            this.f4445d = -1;
            this.f4446e = C.SANS_SERIF_NAME;
            this.f4443b = false;
            this.f4447f = 0.85f;
            this.f4448g = -1;
            return;
        }
        byte[] bArr = list.get(0);
        this.f4444c = bArr[24];
        this.f4445d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f4446e = "Serif".equals(Util.fromUtf8Bytes(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i2 = bArr[25] * 20;
        this.f4448g = i2;
        boolean z6 = (bArr[0] & 32) != 0;
        this.f4443b = z6;
        if (z6) {
            this.f4447f = Util.constrainValue(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i2, 0.0f, 0.95f);
        } else {
            this.f4447f = 0.85f;
        }
    }

    public static void a(SpannableStringBuilder spannableStringBuilder, int i2, int i7, int i8, int i9, int i10) {
        if (i2 != i7) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i2 >>> 8) | ((i2 & 255) << 24)), i8, i9, i10 | 33);
        }
    }

    public static void b(SpannableStringBuilder spannableStringBuilder, int i2, int i7, int i8, int i9, int i10) {
        if (i2 != i7) {
            int i11 = i10 | 33;
            boolean z6 = (i2 & 1) != 0;
            boolean z7 = (i2 & 2) != 0;
            if (z6) {
                if (z7) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i8, i9, i11);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i8, i9, i11);
                }
            } else if (z7) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i8, i9, i11);
            }
            boolean z8 = (i2 & 4) != 0;
            if (z8) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i8, i9, i11);
            }
            if (z8 || z6 || z7) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i8, i9, i11);
        }
    }

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<c> consumer) {
        String readString;
        int i8;
        int i9;
        ParsableByteArray parsableByteArray = this.f4442a;
        parsableByteArray.reset(bArr, i2 + i7);
        parsableByteArray.setPosition(i2);
        int i10 = 1;
        int i11 = 2;
        int i12 = 0;
        v.checkArgument(parsableByteArray.bytesLeft() >= 2);
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        if (readUnsignedShort == 0) {
            readString = "";
        } else {
            int position = parsableByteArray.getPosition();
            Charset readUtfCharsetFromBom = parsableByteArray.readUtfCharsetFromBom();
            int position2 = readUnsignedShort - (parsableByteArray.getPosition() - position);
            if (readUtfCharsetFromBom == null) {
                readUtfCharsetFromBom = StandardCharsets.UTF_8;
            }
            readString = parsableByteArray.readString(position2, readUtfCharsetFromBom);
        }
        if (readString.isEmpty()) {
            consumer.accept(new c(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(readString);
        b(spannableStringBuilder, this.f4444c, 0, 0, spannableStringBuilder.length(), 16711680);
        a(spannableStringBuilder, this.f4445d, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.f4446e;
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f3 = this.f4447f;
        while (parsableByteArray.bytesLeft() >= 8) {
            int position3 = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 1937013100) {
                v.checkArgument(parsableByteArray.bytesLeft() >= i11 ? i10 : i12);
                int readUnsignedShort2 = parsableByteArray.readUnsignedShort();
                int i13 = i12;
                while (i13 < readUnsignedShort2) {
                    v.checkArgument(parsableByteArray.bytesLeft() >= 12 ? i10 : i12);
                    int readUnsignedShort3 = parsableByteArray.readUnsignedShort();
                    int readUnsignedShort4 = parsableByteArray.readUnsignedShort();
                    parsableByteArray.skipBytes(i11);
                    int i14 = i13;
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    parsableByteArray.skipBytes(i10);
                    int readInt3 = parsableByteArray.readInt();
                    if (readUnsignedShort4 > spannableStringBuilder.length()) {
                        StringBuilder q6 = i.q(readUnsignedShort4, "Truncating styl end (", ") to cueText.length() (");
                        q6.append(spannableStringBuilder.length());
                        q6.append(").");
                        Log.w("Tx3gParser", q6.toString());
                        readUnsignedShort4 = spannableStringBuilder.length();
                    }
                    if (readUnsignedShort3 >= readUnsignedShort4) {
                        Log.w("Tx3gParser", "Ignoring styl with start (" + readUnsignedShort3 + ") >= end (" + readUnsignedShort4 + ").");
                        i9 = i14;
                    } else {
                        i9 = i14;
                        int i15 = readUnsignedShort4;
                        b(spannableStringBuilder, readUnsignedByte, this.f4444c, readUnsignedShort3, i15, 0);
                        a(spannableStringBuilder, readInt3, this.f4445d, readUnsignedShort3, i15, 0);
                    }
                    i13 = i9 + 1;
                    i10 = 1;
                    i11 = 2;
                    i12 = 0;
                }
                i8 = i11;
            } else if (readInt2 == 1952608120 && this.f4443b) {
                i8 = 2;
                v.checkArgument(parsableByteArray.bytesLeft() >= 2);
                f3 = Util.constrainValue(parsableByteArray.readUnsignedShort() / this.f4448g, 0.0f, 0.95f);
            } else {
                i8 = 2;
            }
            parsableByteArray.setPosition(position3 + readInt);
            i11 = i8;
            i10 = 1;
            i12 = 0;
        }
        consumer.accept(new c(ImmutableList.of(new Cue.Builder().setText(spannableStringBuilder).setLine(f3, 0).setLineAnchor(0).build()), C.TIME_UNSET, C.TIME_UNSET));
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
