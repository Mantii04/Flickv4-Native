package com.google.android.gms.common.internal.safeparcel;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public class SafeParcelWriter {
    private SafeParcelWriter() {
    }

    public static int a(Parcel parcel, int i2) {
        parcel.writeInt(i2 | (-65536));
        parcel.writeInt(0);
        return parcel.dataPosition();
    }

    public static void b(Parcel parcel, int i2) {
        int dataPosition = parcel.dataPosition();
        parcel.setDataPosition(i2 - 4);
        parcel.writeInt(dataPosition - i2);
        parcel.setDataPosition(dataPosition);
    }

    public static int beginObjectHeader(Parcel parcel) {
        return a(parcel, 20293);
    }

    public static void c(Parcel parcel, int i2, int i7) {
        parcel.writeInt(i2 | (i7 << 16));
    }

    public static void finishObjectHeader(Parcel parcel, int i2) {
        b(parcel, i2);
    }

    public static void writeBoolean(Parcel parcel, int i2, boolean z6) {
        c(parcel, i2, 4);
        parcel.writeInt(z6 ? 1 : 0);
    }

    public static void writeBooleanObject(Parcel parcel, int i2, Boolean bool, boolean z6) {
        if (bool != null) {
            c(parcel, i2, 4);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        } else if (z6) {
            c(parcel, i2, 0);
        }
    }

    public static void writeBundle(Parcel parcel, int i2, Bundle bundle, boolean z6) {
        if (bundle == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeBundle(bundle);
            b(parcel, a7);
        }
    }

    public static void writeByteArray(Parcel parcel, int i2, byte[] bArr, boolean z6) {
        if (bArr == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeByteArray(bArr);
            b(parcel, a7);
        }
    }

    public static void writeDouble(Parcel parcel, int i2, double d7) {
        c(parcel, i2, 8);
        parcel.writeDouble(d7);
    }

    public static void writeDoubleObject(Parcel parcel, int i2, Double d7, boolean z6) {
        if (d7 != null) {
            c(parcel, i2, 8);
            parcel.writeDouble(d7.doubleValue());
        } else if (z6) {
            c(parcel, i2, 0);
        }
    }

    public static void writeFloat(Parcel parcel, int i2, float f3) {
        c(parcel, i2, 4);
        parcel.writeFloat(f3);
    }

    public static void writeFloatObject(Parcel parcel, int i2, Float f3, boolean z6) {
        if (f3 != null) {
            c(parcel, i2, 4);
            parcel.writeFloat(f3.floatValue());
        } else if (z6) {
            c(parcel, i2, 0);
        }
    }

    public static void writeIBinder(Parcel parcel, int i2, IBinder iBinder, boolean z6) {
        if (iBinder == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeStrongBinder(iBinder);
            b(parcel, a7);
        }
    }

    public static void writeInt(Parcel parcel, int i2, int i7) {
        c(parcel, i2, 4);
        parcel.writeInt(i7);
    }

    public static void writeIntArray(Parcel parcel, int i2, int[] iArr, boolean z6) {
        if (iArr == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeIntArray(iArr);
            b(parcel, a7);
        }
    }

    public static void writeIntegerObject(Parcel parcel, int i2, Integer num, boolean z6) {
        if (num != null) {
            c(parcel, i2, 4);
            parcel.writeInt(num.intValue());
        } else if (z6) {
            c(parcel, i2, 0);
        }
    }

    public static void writeLong(Parcel parcel, int i2, long j7) {
        c(parcel, i2, 8);
        parcel.writeLong(j7);
    }

    public static void writeLongArray(Parcel parcel, int i2, long[] jArr, boolean z6) {
        if (jArr == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeLongArray(jArr);
            b(parcel, a7);
        }
    }

    public static void writeLongObject(Parcel parcel, int i2, Long l7, boolean z6) {
        if (l7 != null) {
            c(parcel, i2, 8);
            parcel.writeLong(l7.longValue());
        } else if (z6) {
            c(parcel, i2, 0);
        }
    }

    public static void writeParcel(Parcel parcel, int i2, Parcel parcel2, boolean z6) {
        if (parcel2 == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.appendFrom(parcel2, 0, parcel2.dataSize());
            b(parcel, a7);
        }
    }

    public static void writeParcelable(Parcel parcel, int i2, Parcelable parcelable, int i7, boolean z6) {
        if (parcelable == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcelable.writeToParcel(parcel, i7);
            b(parcel, a7);
        }
    }

    public static void writeString(Parcel parcel, int i2, String str, boolean z6) {
        if (str == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeString(str);
            b(parcel, a7);
        }
    }

    public static void writeStringArray(Parcel parcel, int i2, String[] strArr, boolean z6) {
        if (strArr == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeStringArray(strArr);
            b(parcel, a7);
        }
    }

    public static void writeStringList(Parcel parcel, int i2, List<String> list, boolean z6) {
        if (list == null) {
            if (z6) {
                c(parcel, i2, 0);
            }
        } else {
            int a7 = a(parcel, i2);
            parcel.writeStringList(list);
            b(parcel, a7);
        }
    }

    public static <T extends Parcelable> void writeTypedArray(Parcel parcel, int i2, T[] tArr, int i7, boolean z6) {
        if (tArr == null) {
            if (z6) {
                c(parcel, i2, 0);
                return;
            }
            return;
        }
        int a7 = a(parcel, i2);
        parcel.writeInt(tArr.length);
        for (T t6 : tArr) {
            if (t6 == null) {
                parcel.writeInt(0);
            } else {
                int dataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int dataPosition2 = parcel.dataPosition();
                t6.writeToParcel(parcel, i7);
                int dataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(dataPosition);
                parcel.writeInt(dataPosition3 - dataPosition2);
                parcel.setDataPosition(dataPosition3);
            }
        }
        b(parcel, a7);
    }

    public static <T extends Parcelable> void writeTypedList(Parcel parcel, int i2, List<T> list, boolean z6) {
        if (list == null) {
            if (z6) {
                c(parcel, i2, 0);
                return;
            }
            return;
        }
        int a7 = a(parcel, i2);
        int size = list.size();
        parcel.writeInt(size);
        for (int i7 = 0; i7 < size; i7++) {
            T t6 = list.get(i7);
            if (t6 == null) {
                parcel.writeInt(0);
            } else {
                int dataPosition = parcel.dataPosition();
                parcel.writeInt(1);
                int dataPosition2 = parcel.dataPosition();
                t6.writeToParcel(parcel, 0);
                int dataPosition3 = parcel.dataPosition();
                parcel.setDataPosition(dataPosition);
                parcel.writeInt(dataPosition3 - dataPosition2);
                parcel.setDataPosition(dataPosition3);
            }
        }
        b(parcel, a7);
    }
}
