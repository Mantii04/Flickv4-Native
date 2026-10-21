package flix.com.vision.api;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class TraktAPI$ScrobbleState {

    /* renamed from: b, reason: collision with root package name */
    public static final TraktAPI$ScrobbleState f15793b;

    /* renamed from: e, reason: collision with root package name */
    public static final TraktAPI$ScrobbleState f15794e;

    /* renamed from: f, reason: collision with root package name */
    public static final TraktAPI$ScrobbleState f15795f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ TraktAPI$ScrobbleState[] f15796j;

    static {
        TraktAPI$ScrobbleState traktAPI$ScrobbleState = new TraktAPI$ScrobbleState("START", 0);
        f15793b = traktAPI$ScrobbleState;
        TraktAPI$ScrobbleState traktAPI$ScrobbleState2 = new TraktAPI$ScrobbleState("PAUSE", 1);
        f15794e = traktAPI$ScrobbleState2;
        TraktAPI$ScrobbleState traktAPI$ScrobbleState3 = new TraktAPI$ScrobbleState("STOP", 2);
        f15795f = traktAPI$ScrobbleState3;
        f15796j = new TraktAPI$ScrobbleState[]{traktAPI$ScrobbleState, traktAPI$ScrobbleState2, traktAPI$ScrobbleState3};
    }

    public static TraktAPI$ScrobbleState valueOf(String str) {
        return (TraktAPI$ScrobbleState) Enum.valueOf(TraktAPI$ScrobbleState.class, str);
    }

    public static TraktAPI$ScrobbleState[] values() {
        return (TraktAPI$ScrobbleState[]) f15796j.clone();
    }
}
