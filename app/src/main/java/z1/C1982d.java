package z1;

import A.i;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.SparseIntArray;
import p.g;

/* renamed from: z1.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1982d extends AbstractC1981c {

    /* renamed from: d, reason: collision with root package name */
    public final SparseIntArray f21397d;

    /* renamed from: e, reason: collision with root package name */
    public final Parcel f21398e;

    /* renamed from: f, reason: collision with root package name */
    public final int f21399f;

    /* renamed from: g, reason: collision with root package name */
    public final int f21400g;

    /* renamed from: h, reason: collision with root package name */
    public final String f21401h;

    /* renamed from: i, reason: collision with root package name */
    public int f21402i;

    /* renamed from: j, reason: collision with root package name */
    public int f21403j;

    /* renamed from: k, reason: collision with root package name */
    public int f21404k;

    public C1982d(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new g(), new g(), new g());
    }

    @Override // z1.AbstractC1981c
    public void closeField() {
        int i2 = this.f21402i;
        if (i2 >= 0) {
            int i7 = this.f21397d.get(i2);
            Parcel parcel = this.f21398e;
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i7);
            parcel.writeInt(dataPosition - i7);
            parcel.setDataPosition(dataPosition);
        }
    }

    @Override // z1.AbstractC1981c
    public AbstractC1981c createSubParcel() {
        Parcel parcel = this.f21398e;
        int dataPosition = parcel.dataPosition();
        int i2 = this.f21403j;
        if (i2 == this.f21399f) {
            i2 = this.f21400g;
        }
        return new C1982d(parcel, dataPosition, i2, i.o(new StringBuilder(), this.f21401h, "  "), this.f21394a, this.f21395b, this.f21396c);
    }

    @Override // z1.AbstractC1981c
    public boolean readBoolean() {
        return this.f21398e.readInt() != 0;
    }

    @Override // z1.AbstractC1981c
    public byte[] readByteArray() {
        Parcel parcel = this.f21398e;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // z1.AbstractC1981c
    public CharSequence readCharSequence() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.f21398e);
    }

    @Override // z1.AbstractC1981c
    public boolean readField(int i2) {
        while (this.f21403j < this.f21400g) {
            int i7 = this.f21404k;
            if (i7 == i2) {
                return true;
            }
            if (String.valueOf(i7).compareTo(String.valueOf(i2)) > 0) {
                return false;
            }
            int i8 = this.f21403j;
            Parcel parcel = this.f21398e;
            parcel.setDataPosition(i8);
            int readInt = parcel.readInt();
            this.f21404k = parcel.readInt();
            this.f21403j += readInt;
        }
        return this.f21404k == i2;
    }

    @Override // z1.AbstractC1981c
    public int readInt() {
        return this.f21398e.readInt();
    }

    @Override // z1.AbstractC1981c
    public <T extends Parcelable> T readParcelable() {
        return (T) this.f21398e.readParcelable(C1982d.class.getClassLoader());
    }

    @Override // z1.AbstractC1981c
    public String readString() {
        return this.f21398e.readString();
    }

    @Override // z1.AbstractC1981c
    public void setOutputField(int i2) {
        closeField();
        this.f21402i = i2;
        this.f21397d.put(i2, this.f21398e.dataPosition());
        writeInt(0);
        writeInt(i2);
    }

    @Override // z1.AbstractC1981c
    public void writeBoolean(boolean z6) {
        this.f21398e.writeInt(z6 ? 1 : 0);
    }

    @Override // z1.AbstractC1981c
    public void writeByteArray(byte[] bArr) {
        Parcel parcel = this.f21398e;
        if (bArr == null) {
            parcel.writeInt(-1);
        } else {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        }
    }

    @Override // z1.AbstractC1981c
    public void writeCharSequence(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.f21398e, 0);
    }

    @Override // z1.AbstractC1981c
    public void writeInt(int i2) {
        this.f21398e.writeInt(i2);
    }

    @Override // z1.AbstractC1981c
    public void writeParcelable(Parcelable parcelable) {
        this.f21398e.writeParcelable(parcelable, 0);
    }

    @Override // z1.AbstractC1981c
    public void writeString(String str) {
        this.f21398e.writeString(str);
    }

    public C1982d(Parcel parcel, int i2, int i7, String str, g gVar, g gVar2, g gVar3) {
        super(gVar, gVar2, gVar3);
        this.f21397d = new SparseIntArray();
        this.f21402i = -1;
        this.f21404k = -1;
        this.f21398e = parcel;
        this.f21399f = i2;
        this.f21400g = i7;
        this.f21403j = i2;
        this.f21401h = str;
    }
}
