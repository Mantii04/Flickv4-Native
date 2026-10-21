package androidx.media3.common.audio;

import A.i;
import P3.v;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class ChannelMixingMatrix {
    private final float[] coefficients;
    private final int inputChannelCount;
    private final boolean isDiagonal;
    private final boolean isIdentity;
    private final boolean isZero;
    private final int outputChannelCount;

    public ChannelMixingMatrix(int i2, int i7, float[] fArr) {
        boolean z6 = false;
        v.checkArgument(i2 > 0, "Input channel count must be positive.");
        v.checkArgument(i7 > 0, "Output channel count must be positive.");
        v.checkArgument(fArr.length == i2 * i7, "Coefficient array length is invalid.");
        this.inputChannelCount = i2;
        this.outputChannelCount = i7;
        this.coefficients = checkCoefficientsValid(fArr);
        int i8 = 0;
        boolean z7 = true;
        boolean z8 = true;
        boolean z9 = true;
        while (i8 < i2) {
            int i9 = 0;
            while (i9 < i7) {
                float mixingCoefficient = getMixingCoefficient(i8, i9);
                boolean z10 = i8 == i9;
                if (mixingCoefficient != 1.0f && z10) {
                    z9 = false;
                }
                if (mixingCoefficient != 0.0f) {
                    z7 = false;
                    if (!z10) {
                        z8 = false;
                    }
                }
                i9++;
            }
            i8++;
        }
        this.isZero = z7;
        boolean z11 = isSquare() && z8;
        this.isDiagonal = z11;
        if (z11 && z9) {
            z6 = true;
        }
        this.isIdentity = z6;
    }

    private static float[] checkCoefficientsValid(float[] fArr) {
        for (int i2 = 0; i2 < fArr.length; i2++) {
            if (fArr[i2] < 0.0f) {
                throw new IllegalArgumentException(i.g(i2, "Coefficient at index ", " is negative."));
            }
        }
        return fArr;
    }

    @Deprecated
    public static ChannelMixingMatrix create(int i2, int i7) {
        return createForConstantGain(i2, i7);
    }

    private static float[] createConstantGainMixingCoefficients(int i2, int i7) {
        if (i2 == i7) {
            return initializeIdentityMatrix(i7);
        }
        if (i2 == 1 && i7 == 2) {
            return new float[]{1.0f, 1.0f};
        }
        if (i2 == 2 && i7 == 1) {
            return new float[]{0.5f, 0.5f};
        }
        throw new UnsupportedOperationException("Default channel mixing coefficients for " + i2 + "->" + i7 + " are not yet implemented.");
    }

    private static float[] createConstantPowerMixingCoefficients(int i2, int i7) {
        if (i7 == 1) {
            return getConstantPowerCoefficientsToMono(i2);
        }
        if (i7 == 2) {
            return getConstantPowerCoefficientsToStereo(i2);
        }
        if (i2 == i7) {
            return initializeIdentityMatrix(i7);
        }
        throw new UnsupportedOperationException("Default constant power channel mixing coefficients for " + i2 + "->" + i7 + " are not implemented.");
    }

    public static ChannelMixingMatrix createForConstantGain(int i2, int i7) {
        return new ChannelMixingMatrix(i2, i7, createConstantGainMixingCoefficients(i2, i7));
    }

    public static ChannelMixingMatrix createForConstantPower(int i2, int i7) {
        return new ChannelMixingMatrix(i2, i7, createConstantPowerMixingCoefficients(i2, i7));
    }

    private static float[] getConstantPowerCoefficientsToMono(int i2) {
        switch (i2) {
            case 1:
                return new float[]{1.0f};
            case 2:
                return new float[]{0.7071f, 0.7071f};
            case 3:
                return new float[]{0.7071f, 0.7071f, 1.0f};
            case 4:
                return new float[]{0.7071f, 0.7071f, 0.5f, 0.5f};
            case 5:
                return new float[]{0.7071f, 0.7071f, 1.0f, 0.5f, 0.5f};
            case 6:
                return new float[]{0.7071f, 0.7071f, 1.0f, 0.7071f, 0.5f, 0.5f};
            default:
                throw new UnsupportedOperationException(i.g(i2, "Default constant power channel mixing coefficients for ", "->1 are not implemented."));
        }
    }

    private static float[] getConstantPowerCoefficientsToStereo(int i2) {
        switch (i2) {
            case 1:
                return new float[]{0.7071f, 0.7071f};
            case 2:
                return new float[]{1.0f, 0.0f, 0.0f, 1.0f};
            case 3:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.0f, 1.0f, 0.7071f};
            case 4:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.0f, 0.7071f};
            case 5:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.7071f, 0.0f, 0.7071f};
            case 6:
                return new float[]{1.0f, 0.0f, 0.7071f, 0.5f, 0.7071f, 0.0f, 0.0f, 1.0f, 0.7071f, 0.5f, 0.0f, 0.7071f};
            default:
                throw new UnsupportedOperationException(i.g(i2, "Default constant power channel mixing coefficients for ", "->2 are not implemented."));
        }
    }

    private static float[] initializeIdentityMatrix(int i2) {
        float[] fArr = new float[i2 * i2];
        for (int i7 = 0; i7 < i2; i7++) {
            fArr[(i2 * i7) + i7] = 1.0f;
        }
        return fArr;
    }

    public int getInputChannelCount() {
        return this.inputChannelCount;
    }

    public float getMixingCoefficient(int i2, int i7) {
        return this.coefficients[(i2 * this.outputChannelCount) + i7];
    }

    public int getOutputChannelCount() {
        return this.outputChannelCount;
    }

    public boolean isDiagonal() {
        return this.isDiagonal;
    }

    public boolean isIdentity() {
        return this.isIdentity;
    }

    public boolean isSquare() {
        return this.inputChannelCount == this.outputChannelCount;
    }

    public boolean isZero() {
        return this.isZero;
    }

    public ChannelMixingMatrix scaleBy(float f3) {
        float[] fArr = new float[this.coefficients.length];
        int i2 = 0;
        while (true) {
            float[] fArr2 = this.coefficients;
            if (i2 >= fArr2.length) {
                return new ChannelMixingMatrix(this.inputChannelCount, this.outputChannelCount, fArr);
            }
            fArr[i2] = fArr2[i2] * f3;
            i2++;
        }
    }
}
