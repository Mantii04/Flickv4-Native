package org.jsoup.select;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class NodeFilter$FilterResult {

    /* renamed from: b, reason: collision with root package name */
    public static final NodeFilter$FilterResult f19367b;

    /* renamed from: e, reason: collision with root package name */
    public static final NodeFilter$FilterResult f19368e;

    /* renamed from: f, reason: collision with root package name */
    public static final NodeFilter$FilterResult f19369f;

    /* renamed from: j, reason: collision with root package name */
    public static final NodeFilter$FilterResult f19370j;

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ NodeFilter$FilterResult[] f19371m;

    static {
        NodeFilter$FilterResult nodeFilter$FilterResult = new NodeFilter$FilterResult("CONTINUE", 0);
        f19367b = nodeFilter$FilterResult;
        NodeFilter$FilterResult nodeFilter$FilterResult2 = new NodeFilter$FilterResult("SKIP_CHILDREN", 1);
        f19368e = nodeFilter$FilterResult2;
        NodeFilter$FilterResult nodeFilter$FilterResult3 = new NodeFilter$FilterResult("SKIP_ENTIRELY", 2);
        NodeFilter$FilterResult nodeFilter$FilterResult4 = new NodeFilter$FilterResult("REMOVE", 3);
        f19369f = nodeFilter$FilterResult4;
        NodeFilter$FilterResult nodeFilter$FilterResult5 = new NodeFilter$FilterResult("STOP", 4);
        f19370j = nodeFilter$FilterResult5;
        f19371m = new NodeFilter$FilterResult[]{nodeFilter$FilterResult, nodeFilter$FilterResult2, nodeFilter$FilterResult3, nodeFilter$FilterResult4, nodeFilter$FilterResult5};
    }

    public static NodeFilter$FilterResult valueOf(String str) {
        return (NodeFilter$FilterResult) Enum.valueOf(NodeFilter$FilterResult.class, str);
    }

    public static NodeFilter$FilterResult[] values() {
        return (NodeFilter$FilterResult[]) f19371m.clone();
    }
}
