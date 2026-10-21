package a4;

import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.platforminfo.LibraryVersion;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.tracing.ComponentMonitor;

/* renamed from: a4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0394a implements ComponentFactory {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f4761b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f4762c;

    public /* synthetic */ C0394a(String str, int i2, Object obj) {
        this.f4760a = i2;
        this.f4761b = str;
        this.f4762c = obj;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object create(ComponentContainer componentContainer) {
        Object lambda$processRegistrar$0;
        LibraryVersion lambda$fromContext$0;
        switch (this.f4760a) {
            case 0:
                lambda$processRegistrar$0 = ComponentMonitor.lambda$processRegistrar$0(this.f4761b, (Component) this.f4762c, componentContainer);
                return lambda$processRegistrar$0;
            default:
                lambda$fromContext$0 = LibraryVersionComponent.lambda$fromContext$0(this.f4761b, (LibraryVersionComponent.VersionExtractor) this.f4762c, componentContainer);
                return lambda$fromContext$0;
        }
    }
}
