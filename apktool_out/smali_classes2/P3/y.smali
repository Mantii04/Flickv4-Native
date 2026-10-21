.class public final LP3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:LP3/o;


# direct methods
.method public constructor <init>(LP3/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP3/y;->a:LP3/o;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public iterator(LP3/A;Ljava/lang/CharSequence;)LP3/z;
    .locals 1

    .line 2
    new-instance v0, LP3/x;

    invoke-direct {v0, p0, p1, p2}, LP3/x;-><init>(LP3/y;LP3/A;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public bridge synthetic iterator(LP3/A;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, LP3/y;->iterator(LP3/A;Ljava/lang/CharSequence;)LP3/z;

    move-result-object p1

    return-object p1
.end method
