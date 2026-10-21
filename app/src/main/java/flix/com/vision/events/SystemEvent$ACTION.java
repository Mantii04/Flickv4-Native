package flix.com.vision.events;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class SystemEvent$ACTION {

    /* renamed from: b, reason: collision with root package name */
    public static final SystemEvent$ACTION f15992b;

    /* renamed from: e, reason: collision with root package name */
    public static final SystemEvent$ACTION f15993e;

    /* renamed from: f, reason: collision with root package name */
    public static final SystemEvent$ACTION f15994f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ SystemEvent$ACTION[] f15995j;

    static {
        SystemEvent$ACTION systemEvent$ACTION = new SystemEvent$ACTION("HIDE_CHANNEL_LIST", 0);
        f15992b = systemEvent$ACTION;
        SystemEvent$ACTION systemEvent$ACTION2 = new SystemEvent$ACTION("STOP_LOADING_RD", 1);
        SystemEvent$ACTION systemEvent$ACTION3 = new SystemEvent$ACTION("DONE_LOADING_RD", 2);
        SystemEvent$ACTION systemEvent$ACTION4 = new SystemEvent$ACTION("RELOAD_LIST", 3);
        f15993e = systemEvent$ACTION4;
        SystemEvent$ACTION systemEvent$ACTION5 = new SystemEvent$ACTION("REFRESH_COUNTER", 4);
        f15994f = systemEvent$ACTION5;
        f15995j = new SystemEvent$ACTION[]{systemEvent$ACTION, systemEvent$ACTION2, systemEvent$ACTION3, systemEvent$ACTION4, systemEvent$ACTION5};
    }

    public static SystemEvent$ACTION valueOf(String str) {
        return (SystemEvent$ACTION) Enum.valueOf(SystemEvent$ACTION.class, str);
    }

    public static SystemEvent$ACTION[] values() {
        return (SystemEvent$ACTION[]) f15995j.clone();
    }
}
