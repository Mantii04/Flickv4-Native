.class public final Lb1/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final e:Lb1/c;


# direct methods
.method public constructor <init>(ILb1/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lb1/g;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lb1/g;->e:Lb1/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Lb1/g;)I
    .locals 1

    .line 2
    iget v0, p0, Lb1/g;->b:I

    iget p1, p1, Lb1/g;->b:I

    invoke-static {v0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lb1/g;

    invoke-virtual {p0, p1}, Lb1/g;->compareTo(Lb1/g;)I

    move-result p1

    return p1
.end method
