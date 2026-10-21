package B0;

import androidx.media3.common.C;
import androidx.media3.common.util.ParsableByteArray;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import v0.C1740y;

/* loaded from: classes.dex */
public final class c extends d {

    /* renamed from: b, reason: collision with root package name */
    public long f133b;

    /* renamed from: c, reason: collision with root package name */
    public long[] f134c;

    /* renamed from: d, reason: collision with root package name */
    public long[] f135d;

    public c() {
        super(new C1740y());
        this.f133b = C.TIME_UNSET;
        this.f134c = new long[0];
        this.f135d = new long[0];
    }

    public static Serializable a(int i2, ParsableByteArray parsableByteArray) {
        if (i2 == 0) {
            return Double.valueOf(Double.longBitsToDouble(parsableByteArray.readLong()));
        }
        if (i2 == 1) {
            return Boolean.valueOf(parsableByteArray.readUnsignedByte() == 1);
        }
        if (i2 == 2) {
            return c(parsableByteArray);
        }
        if (i2 != 3) {
            if (i2 == 8) {
                return b(parsableByteArray);
            }
            if (i2 != 10) {
                if (i2 != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(parsableByteArray.readLong()));
                parsableByteArray.skipBytes(2);
                return date;
            }
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            ArrayList arrayList = new ArrayList(readUnsignedIntToInt);
            for (int i7 = 0; i7 < readUnsignedIntToInt; i7++) {
                Serializable a7 = a(parsableByteArray.readUnsignedByte(), parsableByteArray);
                if (a7 != null) {
                    arrayList.add(a7);
                }
            }
            return arrayList;
        }
        HashMap hashMap = new HashMap();
        while (true) {
            String c7 = c(parsableByteArray);
            int readUnsignedByte = parsableByteArray.readUnsignedByte();
            if (readUnsignedByte == 9) {
                return hashMap;
            }
            Serializable a8 = a(readUnsignedByte, parsableByteArray);
            if (a8 != null) {
                hashMap.put(c7, a8);
            }
        }
    }

    public static HashMap b(ParsableByteArray parsableByteArray) {
        int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
        HashMap hashMap = new HashMap(readUnsignedIntToInt);
        for (int i2 = 0; i2 < readUnsignedIntToInt; i2++) {
            String c7 = c(parsableByteArray);
            Serializable a7 = a(parsableByteArray.readUnsignedByte(), parsableByteArray);
            if (a7 != null) {
                hashMap.put(c7, a7);
            }
        }
        return hashMap;
    }

    public static String c(ParsableByteArray parsableByteArray) {
        int readUnsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(readUnsignedShort);
        return new String(parsableByteArray.getData(), position, readUnsignedShort);
    }

    public long getDurationUs() {
        return this.f133b;
    }

    public long[] getKeyFrameTagPositions() {
        return this.f135d;
    }

    public long[] getKeyFrameTimesUs() {
        return this.f134c;
    }

    @Override // B0.d
    public boolean parseHeader(ParsableByteArray parsableByteArray) {
        return true;
    }

    @Override // B0.d
    public boolean parsePayload(ParsableByteArray parsableByteArray, long j7) {
        if (parsableByteArray.readUnsignedByte() != 2 || !"onMetaData".equals(c(parsableByteArray)) || parsableByteArray.bytesLeft() == 0 || parsableByteArray.readUnsignedByte() != 8) {
            return false;
        }
        HashMap b7 = b(parsableByteArray);
        Object obj = b7.get("duration");
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (doubleValue > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
                this.f133b = (long) (doubleValue * 1000000.0d);
            }
        }
        Object obj2 = b7.get("keyframes");
        if (obj2 instanceof Map) {
            Map map = (Map) obj2;
            Object obj3 = map.get("filepositions");
            Object obj4 = map.get("times");
            if ((obj3 instanceof List) && (obj4 instanceof List)) {
                List list = (List) obj3;
                List list2 = (List) obj4;
                int size = list2.size();
                this.f134c = new long[size];
                this.f135d = new long[size];
                for (int i2 = 0; i2 < size; i2++) {
                    Object obj5 = list.get(i2);
                    Object obj6 = list2.get(i2);
                    if (!(obj6 instanceof Double) || !(obj5 instanceof Double)) {
                        this.f134c = new long[0];
                        this.f135d = new long[0];
                        break;
                    }
                    this.f134c[i2] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                    this.f135d[i2] = ((Double) obj5).longValue();
                }
            }
        }
        return false;
    }
}
