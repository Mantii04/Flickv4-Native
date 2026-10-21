.class public final Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Lcom/google/android/material/datepicker/C;

.field public final e:Lcom/google/android/material/datepicker/C;

.field public final f:Lcom/google/android/material/datepicker/c;

.field public final j:Lcom/google/android/material/datepicker/C;

.field public final m:I

.field public final n:I

.field public final p:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/datepicker/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/material/datepicker/d;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/C;Lcom/google/android/material/datepicker/C;Lcom/google/android/material/datepicker/c;Lcom/google/android/material/datepicker/C;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "start cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    const-string v0, "end cannot be null"

    .line 10
    .line 11
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v0, "validator cannot be null"

    .line 15
    .line 16
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/C;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 24
    .line 25
    iput p5, p0, Lcom/google/android/material/datepicker/d;->m:I

    .line 26
    .line 27
    iput-object p3, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    .line 28
    .line 29
    if-eqz p4, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, p4}, Lcom/google/android/material/datepicker/C;->compareTo(Lcom/google/android/material/datepicker/C;)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-gtz p3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "start Month cannot be after current Month"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_1
    :goto_0
    if-eqz p4, :cond_3

    .line 47
    .line 48
    invoke-virtual {p4, p2}, Lcom/google/android/material/datepicker/C;->compareTo(Lcom/google/android/material/datepicker/C;)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    if-gtz p3, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    const-string p2, "current Month cannot be after end Month"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_3
    :goto_1
    if-ltz p5, :cond_4

    .line 64
    .line 65
    const/4 p3, 0x0

    .line 66
    invoke-static {p3}, Lcom/google/android/material/datepicker/M;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    const/4 p4, 0x7

    .line 71
    invoke-virtual {p3, p4}, Ljava/util/Calendar;->getMaximum(I)I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    if-gt p5, p3, :cond_4

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/C;->f(Lcom/google/android/material/datepicker/C;)I

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    add-int/lit8 p3, p3, 0x1

    .line 82
    .line 83
    iput p3, p0, Lcom/google/android/material/datepicker/d;->p:I

    .line 84
    .line 85
    iget p2, p2, Lcom/google/android/material/datepicker/C;->f:I

    .line 86
    .line 87
    iget p1, p1, Lcom/google/android/material/datepicker/C;->f:I

    .line 88
    .line 89
    sub-int/2addr p2, p1

    .line 90
    add-int/lit8 p2, p2, 0x1

    .line 91
    .line 92
    iput p2, p0, Lcom/google/android/material/datepicker/d;->n:I

    .line 93
    .line 94
    return-void

    .line 95
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 96
    .line 97
    const-string p2, "firstDayOfWeek is not valid"

    .line 98
    .line 99
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/d;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/d;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 16
    .line 17
    invoke-virtual {v3, v1}, Lcom/google/android/material/datepicker/C;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/C;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/C;

    .line 26
    .line 27
    invoke-virtual {v1, v3}, Lcom/google/android/material/datepicker/C;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 36
    .line 37
    invoke-static {v1, v3}, LL/c;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget v1, p0, Lcom/google/android/material/datepicker/d;->m:I

    .line 44
    .line 45
    iget v3, p1, Lcom/google/android/material/datepicker/d;->m:I

    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    .line 50
    .line 51
    iget-object p1, p1, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    .line 52
    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    return v0

    .line 60
    :cond_2
    return v2
.end method

.method public getDateValidator()Lcom/google/android/material/datepicker/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/material/datepicker/d;->m:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/C;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 14
    .line 15
    const/4 v5, 0x5

    .line 16
    new-array v5, v5, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    aput-object v2, v5, v6

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    aput-object v3, v5, v2

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    aput-object v4, v5, v2

    .line 26
    .line 27
    const/4 v2, 0x3

    .line 28
    aput-object v0, v5, v2

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    aput-object v1, v5, v0

    .line 32
    .line 33
    invoke-static {v5}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->b:Lcom/google/android/material/datepicker/C;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->e:Lcom/google/android/material/datepicker/C;

    .line 8
    .line 9
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->j:Lcom/google/android/material/datepicker/C;

    .line 13
    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/google/android/material/datepicker/d;->f:Lcom/google/android/material/datepicker/c;

    .line 18
    .line 19
    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 20
    .line 21
    .line 22
    iget p2, p0, Lcom/google/android/material/datepicker/d;->m:I

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
