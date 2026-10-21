package y1;

import android.graphics.Path;

/* loaded from: classes.dex */
public abstract class r extends q {

    /* renamed from: a, reason: collision with root package name */
    public D.f[] f21013a;

    /* renamed from: b, reason: collision with root package name */
    public String f21014b;

    /* renamed from: c, reason: collision with root package name */
    public int f21015c;

    public r() {
        this.f21013a = null;
        this.f21015c = 0;
    }

    public D.f[] getPathData() {
        return this.f21013a;
    }

    public String getPathName() {
        return this.f21014b;
    }

    public boolean isClipPath() {
        return false;
    }

    public void setPathData(D.f[] fVarArr) {
        if (D.g.canMorph(this.f21013a, fVarArr)) {
            D.g.updateNodes(this.f21013a, fVarArr);
        } else {
            this.f21013a = D.g.deepCopyNodes(fVarArr);
        }
    }

    public void toPath(Path path) {
        path.reset();
        D.f[] fVarArr = this.f21013a;
        if (fVarArr != null) {
            D.f.nodesToPath(fVarArr, path);
        }
    }

    public r(r rVar) {
        this.f21013a = null;
        this.f21015c = 0;
        this.f21014b = rVar.f21014b;
        this.f21013a = D.g.deepCopyNodes(rVar.f21013a);
    }
}
