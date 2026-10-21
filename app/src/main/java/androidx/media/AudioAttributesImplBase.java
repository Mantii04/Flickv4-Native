package androidx.media;

import A.i;
import java.util.Arrays;

/* loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public int f7062a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int f7063b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f7064c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f7065d = -1;

    public boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        return this.f7063b == audioAttributesImplBase.getContentType() && this.f7064c == audioAttributesImplBase.getFlags() && this.f7062a == audioAttributesImplBase.getUsage() && this.f7065d == audioAttributesImplBase.f7065d;
    }

    public int getContentType() {
        return this.f7063b;
    }

    public int getFlags() {
        int i2 = this.f7064c;
        int legacyStreamType = getLegacyStreamType();
        if (legacyStreamType == 6) {
            i2 |= 4;
        } else if (legacyStreamType == 7) {
            i2 |= 1;
        }
        return i2 & 273;
    }

    @Override // androidx.media.AudioAttributesImpl
    public int getLegacyStreamType() {
        int i2 = this.f7065d;
        return i2 != -1 ? i2 : AudioAttributesCompat.a(this.f7064c, this.f7062a);
    }

    public int getUsage() {
        return this.f7062a;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f7063b), Integer.valueOf(this.f7064c), Integer.valueOf(this.f7062a), Integer.valueOf(this.f7065d)});
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.f7065d != -1) {
            sb.append(" stream=");
            sb.append(this.f7065d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i2 = this.f7062a;
        int i7 = AudioAttributesCompat.f7058b;
        switch (i2) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case 6:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                str = "USAGE_GAME";
                break;
            case 15:
            default:
                str = i.f(i2, "unknown usage ");
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.f7063b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f7064c).toUpperCase());
        return sb.toString();
    }
}
