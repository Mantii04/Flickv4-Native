package R2;

/* loaded from: classes.dex */
public abstract class z {
    public static y jsonBuilder(String str) {
        o oVar = new o();
        oVar.f3084e = str;
        return oVar;
    }

    public static y protoBuilder(byte[] bArr) {
        o oVar = new o();
        oVar.f3083d = bArr;
        return oVar;
    }

    public abstract Integer getEventCode();

    public abstract long getEventTimeMs();

    public abstract long getEventUptimeMs();

    public abstract E getNetworkConnectionInfo();

    public abstract byte[] getSourceExtension();

    public abstract String getSourceExtensionJsonProto3();

    public abstract long getTimezoneOffsetSeconds();
}
