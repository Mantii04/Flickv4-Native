.class public final synthetic LC1/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroidx/work/impl/WorkDatabase;

.field public final synthetic e:LK1/E;

.field public final synthetic f:LK1/E;

.field public final synthetic j:Ljava/util/List;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/util/Set;

.field public final synthetic p:Z


# direct methods
.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;LK1/E;LK1/E;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/J;->b:Landroidx/work/impl/WorkDatabase;

    iput-object p2, p0, LC1/J;->e:LK1/E;

    iput-object p3, p0, LC1/J;->f:LK1/E;

    iput-object p4, p0, LC1/J;->j:Ljava/util/List;

    iput-object p5, p0, LC1/J;->m:Ljava/lang/String;

    iput-object p6, p0, LC1/J;->n:Ljava/util/Set;

    iput-boolean p7, p0, LC1/J;->p:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 38

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "$workDatabase"

    .line 4
    .line 5
    iget-object v2, v0, LC1/J;->b:Landroidx/work/impl/WorkDatabase;

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "$newWorkSpec"

    .line 11
    .line 12
    iget-object v3, v0, LC1/J;->e:LK1/E;

    .line 13
    .line 14
    invoke-static {v3, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v1, "$oldWorkSpec"

    .line 18
    .line 19
    iget-object v4, v0, LC1/J;->f:LK1/E;

    .line 20
    .line 21
    invoke-static {v4, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, "$schedulers"

    .line 25
    .line 26
    iget-object v5, v0, LC1/J;->j:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v5, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "$workSpecId"

    .line 32
    .line 33
    iget-object v6, v0, LC1/J;->m:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v6, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v1, "$tags"

    .line 39
    .line 40
    iget-object v7, v0, LC1/J;->n:Ljava/util/Set;

    .line 41
    .line 42
    invoke-static {v7, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workSpecDao()LK1/F;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->workTagDao()LK1/Y;

    .line 50
    .line 51
    .line 52
    move-result-object v33

    .line 53
    move-object v8, v5

    .line 54
    iget-object v5, v4, LK1/E;->b:Landroidx/work/WorkInfo$State;

    .line 55
    .line 56
    iget-wide v9, v4, LK1/E;->n:J

    .line 57
    .line 58
    invoke-virtual {v4}, LK1/E;->getGeneration()I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    add-int/lit8 v30, v11, 0x1

    .line 63
    .line 64
    const v31, 0x7dbfd

    .line 65
    .line 66
    .line 67
    const/16 v32, 0x0

    .line 68
    .line 69
    const/4 v11, 0x0

    .line 70
    move-object v12, v6

    .line 71
    const/4 v6, 0x0

    .line 72
    move-object v13, v7

    .line 73
    const/4 v7, 0x0

    .line 74
    move-object v14, v8

    .line 75
    const/4 v8, 0x0

    .line 76
    move-wide/from16 v21, v9

    .line 77
    .line 78
    const/4 v9, 0x0

    .line 79
    move-object v15, v11

    .line 80
    const-wide/16 v10, 0x0

    .line 81
    .line 82
    move-object/from16 v16, v12

    .line 83
    .line 84
    move-object/from16 v17, v13

    .line 85
    .line 86
    const-wide/16 v12, 0x0

    .line 87
    .line 88
    move-object/from16 v18, v14

    .line 89
    .line 90
    move-object/from16 v19, v15

    .line 91
    .line 92
    const-wide/16 v14, 0x0

    .line 93
    .line 94
    move-object/from16 v20, v16

    .line 95
    .line 96
    const/16 v16, 0x0

    .line 97
    .line 98
    iget v4, v4, LK1/E;->k:I

    .line 99
    .line 100
    move-object/from16 v23, v18

    .line 101
    .line 102
    const/16 v18, 0x0

    .line 103
    .line 104
    move-object/from16 v25, v17

    .line 105
    .line 106
    move-object/from16 v24, v20

    .line 107
    .line 108
    move/from16 v17, v4

    .line 109
    .line 110
    move-object/from16 v4, v19

    .line 111
    .line 112
    const-wide/16 v19, 0x0

    .line 113
    .line 114
    move-object/from16 v26, v23

    .line 115
    .line 116
    move-object/from16 v27, v24

    .line 117
    .line 118
    const-wide/16 v23, 0x0

    .line 119
    .line 120
    move-object/from16 v29, v25

    .line 121
    .line 122
    move-object/from16 v28, v26

    .line 123
    .line 124
    const-wide/16 v25, 0x0

    .line 125
    .line 126
    move-object/from16 v34, v27

    .line 127
    .line 128
    const/16 v27, 0x0

    .line 129
    .line 130
    move-object/from16 v35, v28

    .line 131
    .line 132
    const/16 v28, 0x0

    .line 133
    .line 134
    move-object/from16 v36, v29

    .line 135
    .line 136
    const/16 v29, 0x0

    .line 137
    .line 138
    move-object/from16 v0, v34

    .line 139
    .line 140
    move-object/from16 v34, v2

    .line 141
    .line 142
    move-object v2, v0

    .line 143
    move-object/from16 v37, v1

    .line 144
    .line 145
    move-object/from16 v1, v35

    .line 146
    .line 147
    move-object/from16 v0, v36

    .line 148
    .line 149
    invoke-static/range {v3 .. v32}, LK1/E;->copy$default(LK1/E;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;LB1/h;LB1/h;JJJLB1/f;ILandroidx/work/BackoffPolicy;JJJJZLandroidx/work/OutOfQuotaPolicy;IIILjava/lang/Object;)LK1/E;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-static {v1, v3}, LL1/f;->wrapInConstraintTrackingWorkerIfNeeded(Ljava/util/List;LK1/E;)LK1/E;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move-object/from16 v3, v37

    .line 158
    .line 159
    check-cast v3, LK1/U;

    .line 160
    .line 161
    invoke-virtual {v3, v1}, LK1/U;->updateWorkSpec(LK1/E;)V

    .line 162
    .line 163
    .line 164
    move-object/from16 v1, v33

    .line 165
    .line 166
    check-cast v1, LK1/b0;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, LK1/b0;->deleteByWorkSpecId(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v2, v0}, LK1/b0;->insertTags(Ljava/lang/String;Ljava/util/Set;)V

    .line 172
    .line 173
    .line 174
    move-object/from16 v0, p0

    .line 175
    .line 176
    iget-boolean v1, v0, LC1/J;->p:Z

    .line 177
    .line 178
    if-nez v1, :cond_0

    .line 179
    .line 180
    const-wide/16 v4, -0x1

    .line 181
    .line 182
    invoke-virtual {v3, v2, v4, v5}, LK1/U;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 183
    .line 184
    .line 185
    invoke-virtual/range {v34 .. v34}, Landroidx/work/impl/WorkDatabase;->workProgressDao()LK1/x;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, LK1/B;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, LK1/B;->delete(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_0
    return-void
.end method
