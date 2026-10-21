.class public final Le4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public final b:I

.field public final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Le4/g;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Le4/f;->b:I

    .line 5
    .line 6
    iput-object p3, p0, Le4/f;->e:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public compareTo(Le4/f;)I
    .locals 1

    .line 2
    iget p1, p1, Le4/f;->b:I

    iget v0, p0, Le4/f;->b:I

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Le4/f;

    invoke-virtual {p0, p1}, Le4/f;->compareTo(Le4/f;)I

    move-result p1

    return p1
.end method
