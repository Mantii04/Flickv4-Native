.class public final Lv5/d;
.super Lv5/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;


# instance fields
.field public final e:Lv5/e;

.field public final f:I

.field public final j:I


# direct methods
.method public constructor <init>(Lv5/e;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv5/e;",
            "II)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lv5/e;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lv5/d;->e:Lv5/e;

    .line 10
    .line 11
    iput p2, p0, Lv5/d;->f:I

    .line 12
    .line 13
    sget-object v0, Lv5/e;->b:Lv5/a;

    .line 14
    .line 15
    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    invoke-virtual {v0, p2, p3, p1}, Lv5/a;->checkRangeIndexes$kotlin_stdlib(III)V

    .line 20
    .line 21
    .line 22
    sub-int/2addr p3, p2

    .line 23
    iput p3, p0, Lv5/d;->j:I

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    sget-object v0, Lv5/e;->b:Lv5/a;

    .line 2
    .line 3
    iget v1, p0, Lv5/d;->j:I

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Lv5/a;->checkElementIndex$kotlin_stdlib(II)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lv5/d;->f:I

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    iget-object p1, p0, Lv5/d;->e:Lv5/e;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lv5/e;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lv5/d;->j:I

    .line 2
    .line 3
    return v0
.end method
