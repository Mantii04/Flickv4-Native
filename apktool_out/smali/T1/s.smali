.class public final LT1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/F;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/s;->c:LT1/G;

    .line 5
    .line 6
    iput p2, p0, LT1/s;->a:I

    .line 7
    .line 8
    iput p3, p0, LT1/s;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run(LT1/i;)V
    .locals 2

    .line 1
    iget p1, p0, LT1/s;->a:I

    .line 2
    .line 3
    iget v0, p0, LT1/s;->b:I

    .line 4
    .line 5
    iget-object v1, p0, LT1/s;->c:LT1/G;

    .line 6
    .line 7
    invoke-virtual {v1, p1, v0}, LT1/G;->setMinAndMaxFrame(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
