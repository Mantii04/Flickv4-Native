package flix.com.vision.helpers;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Constants$TRAKT_TV_EVENT {

    /* renamed from: b, reason: collision with root package name */
    public static final Constants$TRAKT_TV_EVENT f16001b;

    /* renamed from: e, reason: collision with root package name */
    public static final Constants$TRAKT_TV_EVENT f16002e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ Constants$TRAKT_TV_EVENT[] f16003f;

    static {
        Constants$TRAKT_TV_EVENT constants$TRAKT_TV_EVENT = new Constants$TRAKT_TV_EVENT("USER_LOGGED_IN", 0);
        f16001b = constants$TRAKT_TV_EVENT;
        Constants$TRAKT_TV_EVENT constants$TRAKT_TV_EVENT2 = new Constants$TRAKT_TV_EVENT("USER_LOGGED_OUT", 1);
        f16002e = constants$TRAKT_TV_EVENT2;
        f16003f = new Constants$TRAKT_TV_EVENT[]{constants$TRAKT_TV_EVENT, constants$TRAKT_TV_EVENT2};
    }

    public static Constants$TRAKT_TV_EVENT valueOf(String str) {
        return (Constants$TRAKT_TV_EVENT) Enum.valueOf(Constants$TRAKT_TV_EVENT.class, str);
    }

    public static Constants$TRAKT_TV_EVENT[] values() {
        return (Constants$TRAKT_TV_EVENT[]) f16003f.clone();
    }
}
