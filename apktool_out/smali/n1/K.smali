.class public abstract Ln1/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ln1/K;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract createAllTables(Lr1/f;)V
.end method

.method public abstract dropAllTables(Lr1/f;)V
.end method

.method public abstract onCreate(Lr1/f;)V
.end method

.method public abstract onOpen(Lr1/f;)V
.end method

.method public abstract onPostMigrate(Lr1/f;)V
.end method

.method public abstract onPreMigrate(Lr1/f;)V
.end method

.method public abstract onValidateSchema(Lr1/f;)Ln1/L;
.end method
