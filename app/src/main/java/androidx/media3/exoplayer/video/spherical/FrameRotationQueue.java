package androidx.media3.exoplayer.video.spherical;

import android.opengl.Matrix;
import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.TimedValueQueue;

/* loaded from: classes.dex */
final class FrameRotationQueue {
    private boolean recenterMatrixComputed;
    private final float[] recenterMatrix = new float[16];
    private final float[] rotationMatrix = new float[16];
    private final TimedValueQueue<float[]> rotations = new TimedValueQueue<>();

    public static void computeRecenterMatrix(float[] fArr, float[] fArr2) {
        GlUtil.setToIdentity(fArr);
        float f3 = fArr2[10];
        float f7 = fArr2[8];
        float sqrt = (float) Math.sqrt((f7 * f7) + (f3 * f3));
        float f8 = fArr2[10];
        fArr[0] = f8 / sqrt;
        float f9 = fArr2[8];
        fArr[2] = f9 / sqrt;
        fArr[8] = (-f9) / sqrt;
        fArr[10] = f8 / sqrt;
    }

    private static void getRotationMatrixFromAngleAxis(float[] fArr, float[] fArr2) {
        float f3 = fArr2[0];
        float f7 = -fArr2[1];
        float f8 = -fArr2[2];
        float length = Matrix.length(f3, f7, f8);
        if (length != 0.0f) {
            Matrix.setRotateM(fArr, 0, (float) Math.toDegrees(length), f3 / length, f7 / length, f8 / length);
        } else {
            GlUtil.setToIdentity(fArr);
        }
    }

    public boolean pollRotationMatrix(float[] fArr, long j7) {
        float[] pollFloor = this.rotations.pollFloor(j7);
        if (pollFloor == null) {
            return false;
        }
        getRotationMatrixFromAngleAxis(this.rotationMatrix, pollFloor);
        if (!this.recenterMatrixComputed) {
            computeRecenterMatrix(this.recenterMatrix, this.rotationMatrix);
            this.recenterMatrixComputed = true;
        }
        Matrix.multiplyMM(fArr, 0, this.recenterMatrix, 0, this.rotationMatrix, 0);
        return true;
    }

    public void reset() {
        this.rotations.clear();
        this.recenterMatrixComputed = false;
    }

    public void setRotation(long j7, float[] fArr) {
        this.rotations.add(j7, fArr);
    }
}
