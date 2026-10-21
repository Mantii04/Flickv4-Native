.class public final LP3/A;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LP3/o;

.field public final b:LP3/y;

.field public final c:I


# direct methods
.method public constructor <init>(LP3/y;)V
    .locals 1

    .line 1
    invoke-static {}, LP3/o;->none()LP3/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, LP3/A;->b:LP3/y;

    .line 9
    .line 10
    iput-object v0, p0, LP3/A;->a:LP3/o;

    .line 11
    .line 12
    const p1, 0x7fffffff

    .line 13
    .line 14
    .line 15
    iput p1, p0, LP3/A;->c:I

    .line 16
    .line 17
    return-void
.end method

.method public static on(C)LP3/A;
    .locals 0

    .line 1
    invoke-static {p0}, LP3/o;->is(C)LP3/o;

    move-result-object p0

    invoke-static {p0}, LP3/A;->on(LP3/o;)LP3/A;

    move-result-object p0

    return-object p0
.end method

.method public static on(LP3/o;)LP3/A;
    .locals 2

    .line 2
    invoke-static {p0}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, LP3/A;

    new-instance v1, LP3/y;

    invoke-direct {v1, p0}, LP3/y;-><init>(LP3/o;)V

    invoke-direct {v0, v1}, LP3/A;-><init>(LP3/y;)V

    return-object v0
.end method


# virtual methods
.method public splitToList(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LP3/A;->b:LP3/y;

    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, LP3/y;->iterator(LP3/A;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method
