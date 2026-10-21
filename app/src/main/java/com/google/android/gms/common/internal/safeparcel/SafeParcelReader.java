package com.google.android.gms.common.internal.safeparcel;

import A.i;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class SafeParcelReader {

    public static class ParseException extends RuntimeException {
        public ParseException(String str, Parcel parcel) {
            super(str + " Parcel: pos=" + parcel.dataPosition() + " size=" + parcel.dataSize());
        }
    }

    private SafeParcelReader() {
    }

    public static void a(Parcel parcel, int i2, int i7) {
        if (i2 == i7) {
            return;
        }
        throw new ParseException(i.o(i.p(i7, i2, "Expected size ", " got ", " (0x"), Integer.toHexString(i2), ")"), parcel);
    }

    public static void b(Parcel parcel, int i2, int i7) {
        int readSize = readSize(parcel, i2);
        if (readSize == i7) {
            return;
        }
        throw new ParseException(i.o(i.p(i7, readSize, "Expected size ", " got ", " (0x"), Integer.toHexString(readSize), ")"), parcel);
    }

    public static BigDecimal createBigDecimal(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        int readInt = parcel.readInt();
        parcel.setDataPosition(dataPosition + readSize);
        return new BigDecimal(new BigInteger(createByteArray), readInt);
    }

    public static BigDecimal[] createBigDecimalArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigDecimal[] bigDecimalArr = new BigDecimal[readInt];
        for (int i7 = 0; i7 < readInt; i7++) {
            byte[] createByteArray = parcel.createByteArray();
            bigDecimalArr[i7] = new BigDecimal(new BigInteger(createByteArray), parcel.readInt());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bigDecimalArr;
    }

    public static BigInteger createBigInteger(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + readSize);
        return new BigInteger(createByteArray);
    }

    public static BigInteger[] createBigIntegerArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        BigInteger[] bigIntegerArr = new BigInteger[readInt];
        for (int i7 = 0; i7 < readInt; i7++) {
            bigIntegerArr[i7] = new BigInteger(parcel.createByteArray());
        }
        parcel.setDataPosition(dataPosition + readSize);
        return bigIntegerArr;
    }

    public static boolean[] createBooleanArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        boolean[] createBooleanArray = parcel.createBooleanArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createBooleanArray;
    }

    public static Bundle createBundle(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        Bundle readBundle = parcel.readBundle();
        parcel.setDataPosition(dataPosition + readSize);
        return readBundle;
    }

    public static byte[] createByteArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        byte[] createByteArray = parcel.createByteArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createByteArray;
    }

    public static double[] createDoubleArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        double[] createDoubleArray = parcel.createDoubleArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createDoubleArray;
    }

    public static float[] createFloatArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        float[] createFloatArray = parcel.createFloatArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createFloatArray;
    }

    public static int[] createIntArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int[] createIntArray = parcel.createIntArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createIntArray;
    }

    public static long[] createLongArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        long[] createLongArray = parcel.createLongArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createLongArray;
    }

    public static Parcel createParcel(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        obtain.appendFrom(parcel, dataPosition, readSize);
        parcel.setDataPosition(dataPosition + readSize);
        return obtain;
    }

    public static Parcel[] createParcelArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        int readInt = parcel.readInt();
        Parcel[] parcelArr = new Parcel[readInt];
        for (int i7 = 0; i7 < readInt; i7++) {
            int readInt2 = parcel.readInt();
            if (readInt2 != 0) {
                int dataPosition2 = parcel.dataPosition();
                Parcel obtain = Parcel.obtain();
                obtain.appendFrom(parcel, dataPosition2, readInt2);
                parcelArr[i7] = obtain;
                parcel.setDataPosition(dataPosition2 + readInt2);
            } else {
                parcelArr[i7] = null;
            }
        }
        parcel.setDataPosition(dataPosition + readSize);
        return parcelArr;
    }

    public static <T extends Parcelable> T createParcelable(Parcel parcel, int i2, Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        T createFromParcel = creator.createFromParcel(parcel);
        parcel.setDataPosition(dataPosition + readSize);
        return createFromParcel;
    }

    public static String createString(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        String readString = parcel.readString();
        parcel.setDataPosition(dataPosition + readSize);
        return readString;
    }

    public static String[] createStringArray(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        String[] createStringArray = parcel.createStringArray();
        parcel.setDataPosition(dataPosition + readSize);
        return createStringArray;
    }

    public static ArrayList<String> createStringList(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<String> createStringArrayList = parcel.createStringArrayList();
        parcel.setDataPosition(dataPosition + readSize);
        return createStringArrayList;
    }

    public static <T> T[] createTypedArray(Parcel parcel, int i2, Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        T[] tArr = (T[]) parcel.createTypedArray(creator);
        parcel.setDataPosition(dataPosition + readSize);
        return tArr;
    }

    public static <T> ArrayList<T> createTypedList(Parcel parcel, int i2, Parcelable.Creator<T> creator) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        ArrayList<T> createTypedArrayList = parcel.createTypedArrayList(creator);
        parcel.setDataPosition(dataPosition + readSize);
        return createTypedArrayList;
    }

    public static void ensureAtEnd(Parcel parcel, int i2) {
        if (parcel.dataPosition() != i2) {
            throw new ParseException(i.f(i2, "Overread allowed size end="), parcel);
        }
    }

    public static int getFieldId(int i2) {
        return (char) i2;
    }

    public static boolean readBoolean(Parcel parcel, int i2) {
        b(parcel, i2, 4);
        return parcel.readInt() != 0;
    }

    public static Boolean readBooleanObject(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        if (readSize == 0) {
            return null;
        }
        a(parcel, readSize, 4);
        return Boolean.valueOf(parcel.readInt() != 0);
    }

    public static double readDouble(Parcel parcel, int i2) {
        b(parcel, i2, 8);
        return parcel.readDouble();
    }

    public static Double readDoubleObject(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        if (readSize == 0) {
            return null;
        }
        a(parcel, readSize, 8);
        return Double.valueOf(parcel.readDouble());
    }

    public static float readFloat(Parcel parcel, int i2) {
        b(parcel, i2, 4);
        return parcel.readFloat();
    }

    public static Float readFloatObject(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        if (readSize == 0) {
            return null;
        }
        a(parcel, readSize, 4);
        return Float.valueOf(parcel.readFloat());
    }

    public static int readHeader(Parcel parcel) {
        return parcel.readInt();
    }

    public static IBinder readIBinder(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        int dataPosition = parcel.dataPosition();
        if (readSize == 0) {
            return null;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        parcel.setDataPosition(dataPosition + readSize);
        return readStrongBinder;
    }

    public static int readInt(Parcel parcel, int i2) {
        b(parcel, i2, 4);
        return parcel.readInt();
    }

    public static Integer readIntegerObject(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        if (readSize == 0) {
            return null;
        }
        a(parcel, readSize, 4);
        return Integer.valueOf(parcel.readInt());
    }

    public static long readLong(Parcel parcel, int i2) {
        b(parcel, i2, 8);
        return parcel.readLong();
    }

    public static Long readLongObject(Parcel parcel, int i2) {
        int readSize = readSize(parcel, i2);
        if (readSize == 0) {
            return null;
        }
        a(parcel, readSize, 8);
        return Long.valueOf(parcel.readLong());
    }

    public static int readSize(Parcel parcel, int i2) {
        return (i2 & (-65536)) != -65536 ? (char) (i2 >> 16) : parcel.readInt();
    }

    public static void skipUnknownField(Parcel parcel, int i2) {
        parcel.setDataPosition(parcel.dataPosition() + readSize(parcel, i2));
    }

    public static int validateObjectHeader(Parcel parcel) {
        int readHeader = readHeader(parcel);
        int readSize = readSize(parcel, readHeader);
        int fieldId = getFieldId(readHeader);
        int dataPosition = parcel.dataPosition();
        if (fieldId != 20293) {
            throw new ParseException("Expected object header. Got 0x".concat(String.valueOf(Integer.toHexString(readHeader))), parcel);
        }
        int i2 = readSize + dataPosition;
        if (i2 < dataPosition || i2 > parcel.dataSize()) {
            throw new ParseException(i.e(dataPosition, i2, "Size read is invalid start=", " end="), parcel);
        }
        return i2;
    }
}
