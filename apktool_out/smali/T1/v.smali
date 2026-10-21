.class public final LT1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT1/F;


# instance fields
.field public final synthetic a:LY1/e;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Lg2/c;

.field public final synthetic d:LT1/G;


# direct methods
.method public constructor <init>(LT1/G;LY1/e;Ljava/lang/Object;Lg2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LT1/v;->d:LT1/G;

    .line 5
    .line 6
    iput-object p2, p0, LT1/v;->a:LY1/e;

    .line 7
    .line 8
    iput-object p3, p0, LT1/v;->b:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p4, p0, LT1/v;->c:Lg2/c;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run(LT1/i;)V
    .locals 3

    .line 1
    iget-object p1, p0, LT1/v;->b:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v0, p0, LT1/v;->c:Lg2/c;

    .line 4
    .line 5
    iget-object v1, p0, LT1/v;->d:LT1/G;

    .line 6
    .line 7
    iget-object v2, p0, LT1/v;->a:LY1/e;

    .line 8
    .line 9
    invoke-virtual {v1, v2, p1, v0}, LT1/G;->addValueCallback(LY1/e;Ljava/lang/Object;Lg2/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
