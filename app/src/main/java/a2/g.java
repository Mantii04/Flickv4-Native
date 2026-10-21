package a2;

import T1.G;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.MergePaths$MergePathsMode;
import f2.AbstractC0923d;

/* loaded from: classes.dex */
public final class g implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4665a;

    /* renamed from: b, reason: collision with root package name */
    public final MergePaths$MergePathsMode f4666b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4667c;

    public g(String str, MergePaths$MergePathsMode mergePaths$MergePathsMode, boolean z6) {
        this.f4665a = str;
        this.f4666b = mergePaths$MergePathsMode;
        this.f4667c = z6;
    }

    public MergePaths$MergePathsMode getMode() {
        return this.f4666b;
    }

    public String getName() {
        return this.f4665a;
    }

    public boolean isHidden() {
        return this.f4667c;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        if (g7.enableMergePathsForKitKatAndAbove()) {
            return new V1.m(this);
        }
        AbstractC0923d.warning("Animation contains merge paths but they are disabled.");
        return null;
    }

    public String toString() {
        return "MergePaths{mode=" + this.f4666b + '}';
    }
}
