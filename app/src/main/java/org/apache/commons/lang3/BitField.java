package org.apache.commons.lang3;

/* loaded from: classes2.dex */
public class BitField {
    private final int _mask;
    private final int _shift_count;

    public BitField(int i2) {
        this._mask = i2;
        this._shift_count = i2 == 0 ? 0 : Integer.numberOfTrailingZeros(i2);
    }

    public int clear(int i2) {
        return i2 & (~this._mask);
    }

    public byte clearByte(byte b7) {
        return (byte) clear(b7);
    }

    public short clearShort(short s6) {
        return (short) clear(s6);
    }

    public int getRawValue(int i2) {
        return i2 & this._mask;
    }

    public short getShortRawValue(short s6) {
        return (short) getRawValue(s6);
    }

    public short getShortValue(short s6) {
        return (short) getValue(s6);
    }

    public int getValue(int i2) {
        return getRawValue(i2) >> this._shift_count;
    }

    public boolean isAllSet(int i2) {
        int i7 = this._mask;
        return (i2 & i7) == i7;
    }

    public boolean isSet(int i2) {
        return (i2 & this._mask) != 0;
    }

    public int set(int i2) {
        return i2 | this._mask;
    }

    public int setBoolean(int i2, boolean z6) {
        return z6 ? set(i2) : clear(i2);
    }

    public byte setByte(byte b7) {
        return (byte) set(b7);
    }

    public byte setByteBoolean(byte b7, boolean z6) {
        return z6 ? setByte(b7) : clearByte(b7);
    }

    public short setShort(short s6) {
        return (short) set(s6);
    }

    public short setShortBoolean(short s6, boolean z6) {
        return z6 ? setShort(s6) : clearShort(s6);
    }

    public short setShortValue(short s6, short s7) {
        return (short) setValue(s6, s7);
    }

    public int setValue(int i2, int i7) {
        int i8 = this._mask;
        return (i2 & (~i8)) | ((i7 << this._shift_count) & i8);
    }
}
