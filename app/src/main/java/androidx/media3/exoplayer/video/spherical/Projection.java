package androidx.media3.exoplayer.video.spherical;

import P3.v;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes.dex */
final class Projection {
    public static final int DRAW_MODE_TRIANGLES = 0;
    public static final int DRAW_MODE_TRIANGLES_FAN = 2;
    public static final int DRAW_MODE_TRIANGLES_STRIP = 1;
    public static final int POSITION_COORDS_PER_VERTEX = 3;
    public static final int TEXTURE_COORDS_PER_VERTEX = 2;
    public final Mesh leftMesh;
    public final Mesh rightMesh;
    public final boolean singleMesh;
    public final int stereoMode;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface DrawMode {
    }

    public static final class Mesh {
        private final SubMesh[] subMeshes;

        public Mesh(SubMesh... subMeshArr) {
            this.subMeshes = subMeshArr;
        }

        public SubMesh getSubMesh(int i2) {
            return this.subMeshes[i2];
        }

        public int getSubMeshCount() {
            return this.subMeshes.length;
        }
    }

    public static final class SubMesh {
        public static final int VIDEO_TEXTURE_ID = 0;
        public final int mode;
        public final float[] textureCoords;
        public final int textureId;
        public final float[] vertices;

        public SubMesh(int i2, float[] fArr, float[] fArr2, int i7) {
            this.textureId = i2;
            v.checkArgument(((long) fArr.length) * 2 == ((long) fArr2.length) * 3);
            this.vertices = fArr;
            this.textureCoords = fArr2;
            this.mode = i7;
        }

        public int getVertexCount() {
            return this.vertices.length / 3;
        }
    }

    public Projection(Mesh mesh, int i2) {
        this(mesh, mesh, i2);
    }

    public static Projection createEquirectangular(int i2) {
        return createEquirectangular(50.0f, 36, 72, 180.0f, 360.0f, i2);
    }

    public Projection(Mesh mesh, Mesh mesh2, int i2) {
        this.leftMesh = mesh;
        this.rightMesh = mesh2;
        this.stereoMode = i2;
        this.singleMesh = mesh == mesh2;
    }

    public static Projection createEquirectangular(float f3, int i2, int i7, float f7, float f8, int i8) {
        int i9;
        int i10;
        int i11 = i2;
        int i12 = 3;
        int i13 = 1;
        v.checkArgument(f3 > 0.0f);
        v.checkArgument(i11 >= 1);
        v.checkArgument(i7 >= 1);
        v.checkArgument(f7 > 0.0f && f7 <= 180.0f);
        v.checkArgument(f8 > 0.0f && f8 <= 360.0f);
        float radians = (float) Math.toRadians(f7);
        float radians2 = (float) Math.toRadians(f8);
        float f9 = radians / i11;
        float f10 = radians2 / i7;
        int i14 = i7 + 1;
        int i15 = ((i14 * 2) + 2) * i11;
        float[] fArr = new float[i15 * 3];
        float[] fArr2 = new float[i15 * 2];
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < i11) {
            float f11 = radians / 2.0f;
            float f12 = (i16 * f9) - f11;
            int i19 = i12;
            int i20 = i16 + 1;
            int i21 = i13;
            float f13 = (i20 * f9) - f11;
            int i22 = 0;
            while (i22 < i14) {
                float f14 = radians;
                float f15 = radians2;
                int i23 = i18;
                int i24 = 0;
                int i25 = 2;
                while (i24 < i25) {
                    int i26 = i20;
                    float f16 = i22 * f10;
                    float f17 = f9;
                    float f18 = f10;
                    double d7 = f3;
                    double d8 = (f16 + 3.1415927f) - (f15 / 2.0f);
                    double d9 = i24 == 0 ? f12 : f13;
                    fArr[i17] = -((float) (Math.cos(d9) * Math.sin(d8) * d7));
                    fArr[i17 + 1] = (float) (Math.sin(d9) * d7);
                    int i27 = i17 + 3;
                    fArr[i17 + 2] = (float) (Math.cos(d8) * d7 * Math.cos(d9));
                    fArr2[i23] = f16 / f15;
                    int i28 = i23 + 2;
                    fArr2[i23 + 1] = ((i16 + i24) * f17) / f14;
                    if ((i22 == 0 && i24 == 0) || (i22 == i7 && i24 == i21)) {
                        i9 = i19;
                        System.arraycopy(fArr, i17, fArr, i27, i9);
                        i17 += 6;
                        i10 = 2;
                        System.arraycopy(fArr2, i23, fArr2, i28, 2);
                        i23 += 4;
                    } else {
                        i9 = i19;
                        i10 = 2;
                        i17 = i27;
                        i23 = i28;
                    }
                    i24++;
                    i19 = i9;
                    i21 = 1;
                    i25 = i10;
                    i20 = i26;
                    f9 = f17;
                    f10 = f18;
                }
                i22 += i21;
                radians = f14;
                i18 = i23;
                i20 = i20;
                f10 = f10;
                radians2 = f15;
            }
            int i29 = i20;
            i11 = i2;
            i12 = i19;
            i13 = i21;
            i16 = i29;
        }
        int i30 = i13;
        SubMesh[] subMeshArr = new SubMesh[i30];
        subMeshArr[0] = new SubMesh(0, fArr, fArr2, i30);
        return new Projection(new Mesh(subMeshArr), i8);
    }
}
