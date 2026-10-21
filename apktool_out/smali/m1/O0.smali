.class public final Lm1/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lm1/O0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:I

.field public e:I

.field public f:I

.field public j:[I

.field public m:I

.field public n:[I

.field public p:Ljava/util/ArrayList;

.field public q:Z

.field public r:Z

.field public s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lm1/N0;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm1/O0;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lm1/O0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget v0, p1, Lm1/O0;->f:I

    iput v0, p0, Lm1/O0;->f:I

    .line 4
    iget v0, p1, Lm1/O0;->b:I

    iput v0, p0, Lm1/O0;->b:I

    .line 5
    iget v0, p1, Lm1/O0;->e:I

    iput v0, p0, Lm1/O0;->e:I

    .line 6
    iget-object v0, p1, Lm1/O0;->j:[I

    iput-object v0, p0, Lm1/O0;->j:[I

    .line 7
    iget v0, p1, Lm1/O0;->m:I

    iput v0, p0, Lm1/O0;->m:I

    .line 8
    iget-object v0, p1, Lm1/O0;->n:[I

    iput-object v0, p0, Lm1/O0;->n:[I

    .line 9
    iget-boolean v0, p1, Lm1/O0;->q:Z

    iput-boolean v0, p0, Lm1/O0;->q:Z

    .line 10
    iget-boolean v0, p1, Lm1/O0;->r:Z

    iput-boolean v0, p0, Lm1/O0;->r:Z

    .line 11
    iget-boolean v0, p1, Lm1/O0;->s:Z

    iput-boolean v0, p0, Lm1/O0;->s:Z

    .line 12
    iget-object p1, p1, Lm1/O0;->p:Ljava/util/ArrayList;

    iput-object p1, p0, Lm1/O0;->p:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lm1/O0;->b:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lm1/O0;->e:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lm1/O0;->f:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lm1/O0;->f:I

    .line 17
    .line 18
    if-lez p2, :cond_0

    .line 19
    .line 20
    iget-object p2, p0, Lm1/O0;->j:[I

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget p2, p0, Lm1/O0;->m:I

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lm1/O0;->m:I

    .line 31
    .line 32
    if-lez p2, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lm1/O0;->n:[I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-boolean p2, p0, Lm1/O0;->q:Z

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-boolean p2, p0, Lm1/O0;->r:Z

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget-boolean p2, p0, Lm1/O0;->s:Z

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lm1/O0;->p:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
