.class public final LR5/x0;
.super LR5/v0;
.source "SourceFile"


# instance fields
.field public final m:LR5/A0;

.field public final n:LR5/y0;

.field public final p:LR5/t;

.field public final q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LR5/A0;LR5/y0;LR5/t;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LR5/v0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR5/x0;->m:LR5/A0;

    .line 5
    .line 6
    iput-object p2, p0, LR5/x0;->n:LR5/y0;

    .line 7
    .line 8
    iput-object p3, p0, LR5/x0;->p:LR5/t;

    .line 9
    .line 10
    iput-object p4, p0, LR5/x0;->q:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LR5/x0;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lu5/j;->a:Lu5/j;

    return-object p1
.end method

.method public invoke(Ljava/lang/Throwable;)V
    .locals 3

    .line 2
    iget-object p1, p0, LR5/x0;->p:LR5/t;

    iget-object v0, p0, LR5/x0;->q:Ljava/lang/Object;

    iget-object v1, p0, LR5/x0;->m:LR5/A0;

    iget-object v2, p0, LR5/x0;->n:LR5/y0;

    invoke-static {v1, v2, p1, v0}, LR5/A0;->access$continueCompleting(LR5/A0;LR5/y0;LR5/t;Ljava/lang/Object;)V

    return-void
.end method
