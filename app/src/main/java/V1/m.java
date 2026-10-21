package V1;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class m implements n, k {

    /* renamed from: a, reason: collision with root package name */
    public final Path f3895a = new Path();

    /* renamed from: b, reason: collision with root package name */
    public final Path f3896b = new Path();

    /* renamed from: c, reason: collision with root package name */
    public final Path f3897c = new Path();

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f3898d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final a2.g f3899e;

    public m(a2.g gVar) {
        gVar.getName();
        this.f3899e = gVar;
    }

    public final void a(Path.Op op) {
        Matrix matrix;
        Matrix matrix2;
        Path path = this.f3896b;
        path.reset();
        Path path2 = this.f3895a;
        path2.reset();
        ArrayList arrayList = this.f3898d;
        for (int size = arrayList.size() - 1; size >= 1; size--) {
            n nVar = (n) arrayList.get(size);
            if (nVar instanceof e) {
                e eVar = (e) nVar;
                ArrayList arrayList2 = (ArrayList) eVar.a();
                for (int size2 = arrayList2.size() - 1; size2 >= 0; size2--) {
                    Path path3 = ((n) arrayList2.get(size2)).getPath();
                    W1.t tVar = eVar.f3847k;
                    if (tVar != null) {
                        matrix2 = tVar.getMatrix();
                    } else {
                        matrix2 = eVar.f3839c;
                        matrix2.reset();
                    }
                    path3.transform(matrix2);
                    path.addPath(path3);
                }
            } else {
                path.addPath(nVar.getPath());
            }
        }
        int i2 = 0;
        n nVar2 = (n) arrayList.get(0);
        if (nVar2 instanceof e) {
            e eVar2 = (e) nVar2;
            List a7 = eVar2.a();
            while (true) {
                ArrayList arrayList3 = (ArrayList) a7;
                if (i2 >= arrayList3.size()) {
                    break;
                }
                Path path4 = ((n) arrayList3.get(i2)).getPath();
                W1.t tVar2 = eVar2.f3847k;
                if (tVar2 != null) {
                    matrix = tVar2.getMatrix();
                } else {
                    matrix = eVar2.f3839c;
                    matrix.reset();
                }
                path4.transform(matrix);
                path2.addPath(path4);
                i2++;
            }
        } else {
            path2.set(nVar2.getPath());
        }
        this.f3897c.op(path2, path, op);
    }

    @Override // V1.k
    public void absorbContent(ListIterator<d> listIterator) {
        while (listIterator.hasPrevious() && listIterator.previous() != this) {
        }
        while (listIterator.hasPrevious()) {
            d previous = listIterator.previous();
            if (previous instanceof n) {
                this.f3898d.add((n) previous);
                listIterator.remove();
            }
        }
    }

    @Override // V1.n
    public Path getPath() {
        Path path = this.f3897c;
        path.reset();
        a2.g gVar = this.f3899e;
        if (!gVar.isHidden()) {
            int ordinal = gVar.getMode().ordinal();
            if (ordinal == 0) {
                int i2 = 0;
                while (true) {
                    ArrayList arrayList = this.f3898d;
                    if (i2 >= arrayList.size()) {
                        break;
                    }
                    path.addPath(((n) arrayList.get(i2)).getPath());
                    i2++;
                }
            } else {
                if (ordinal == 1) {
                    a(Path.Op.UNION);
                    return path;
                }
                if (ordinal == 2) {
                    a(Path.Op.REVERSE_DIFFERENCE);
                    return path;
                }
                if (ordinal == 3) {
                    a(Path.Op.INTERSECT);
                    return path;
                }
                if (ordinal == 4) {
                    a(Path.Op.XOR);
                    return path;
                }
            }
        }
        return path;
    }

    @Override // V1.d
    public void setContents(List<d> list, List<d> list2) {
        int i2 = 0;
        while (true) {
            ArrayList arrayList = this.f3898d;
            if (i2 >= arrayList.size()) {
                return;
            }
            ((n) arrayList.get(i2)).setContents(list, list2);
            i2++;
        }
    }
}
