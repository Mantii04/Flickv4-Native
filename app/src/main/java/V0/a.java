package V0;

import android.graphics.Bitmap;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.ParsableByteArray;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f3807a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final int[] f3808b = new int[256];

    /* renamed from: c, reason: collision with root package name */
    public boolean f3809c;

    /* renamed from: d, reason: collision with root package name */
    public int f3810d;

    /* renamed from: e, reason: collision with root package name */
    public int f3811e;

    /* renamed from: f, reason: collision with root package name */
    public int f3812f;

    /* renamed from: g, reason: collision with root package name */
    public int f3813g;

    /* renamed from: h, reason: collision with root package name */
    public int f3814h;

    /* renamed from: i, reason: collision with root package name */
    public int f3815i;

    public Cue build() {
        int i2;
        if (this.f3810d == 0 || this.f3811e == 0 || this.f3814h == 0 || this.f3815i == 0) {
            return null;
        }
        ParsableByteArray parsableByteArray = this.f3807a;
        if (parsableByteArray.limit() == 0 || parsableByteArray.getPosition() != parsableByteArray.limit() || !this.f3809c) {
            return null;
        }
        parsableByteArray.setPosition(0);
        int i7 = this.f3814h * this.f3815i;
        int[] iArr = new int[i7];
        int i8 = 0;
        while (i8 < i7) {
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            int[] iArr2 = this.f3808b;
            if (readUnsignedByte != 0) {
                i2 = i8 + 1;
                iArr[i8] = iArr2[readUnsignedByte];
            } else {
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                if (readUnsignedByte2 != 0) {
                    i2 = ((readUnsignedByte2 & 64) == 0 ? readUnsignedByte2 & 63 : ((readUnsignedByte2 & 63) << 8) | parsableByteArray.readUnsignedByte()) + i8;
                    Arrays.fill(iArr, i8, i2, (readUnsignedByte2 & 128) == 0 ? iArr2[0] : iArr2[parsableByteArray.readUnsignedByte()]);
                }
            }
            i8 = i2;
        }
        return new Cue.Builder().setBitmap(Bitmap.createBitmap(iArr, this.f3814h, this.f3815i, Bitmap.Config.ARGB_8888)).setPosition(this.f3812f / this.f3810d).setPositionAnchor(0).setLine(this.f3813g / this.f3811e, 0).setLineAnchor(0).setSize(this.f3814h / this.f3810d).setBitmapHeight(this.f3815i / this.f3811e).build();
    }

    public void reset() {
        this.f3810d = 0;
        this.f3811e = 0;
        this.f3812f = 0;
        this.f3813g = 0;
        this.f3814h = 0;
        this.f3815i = 0;
        this.f3807a.reset(0);
        this.f3809c = false;
    }
}
