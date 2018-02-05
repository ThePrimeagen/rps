(module
 (type $FUNCSIG$ijjjii (func (param i64 i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$ijjii (func (param i64 i64 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vj (func (param i64)))
 (type $FUNCSIG$ijji (func (param i64 i64 i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (import "env" "assert" (func $assert (param i32 i32)))
 (import "env" "back_i64" (func $back_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "front_i64" (func $front_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "load_i64" (func $load_i64 (param i64 i64 i64 i32 i32) (result i32)))
 (import "env" "printi" (func $printi (param i64)))
 (import "env" "printn" (func $printn (param i64)))
 (import "env" "prints" (func $prints (param i32)))
 (import "env" "read_message" (func $read_message (param i32 i32) (result i32)))
 (import "env" "remove_i64" (func $remove_i64 (param i64 i64 i32) (result i32)))
 (import "env" "require_auth" (func $require_auth (param i64)))
 (import "env" "store_i64" (func $store_i64 (param i64 i64 i32 i32) (result i32)))
 (import "env" "update_i64" (func $update_i64 (param i64 i64 i32 i32) (result i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (data (i32.const 4) "PC\00\00")
 (data (i32.const 16) "Could not create new account\00")
 (data (i32.const 48) "Unable to update the account\00")
 (data (i32.const 80) "Could not update game\00")
 (data (i32.const 112) "tie\00")
 (data (i32.const 128) "Could not finish game.\00")
 (data (i32.const 160) "Could not store pending requset\00")
 (data (i32.const 192) "You cannot play yourself\00")
 (data (i32.const 224) "You already have an active game against this opponent\00")
 (data (i32.const 288) "none\00")
 (data (i32.const 304) "could not store player active game\00")
 (data (i32.const 352) "Could not store game\00")
 (data (i32.const 384) "Could not remove the pending hame\00")
 (data (i32.const 432) "Move can only be values 1, 2, or 3\00")
 (data (i32.const 480) "Game does not exist\00")
 (data (i32.const 512) "This game can only be played by the players.\00")
 (data (i32.const 560) "You are not allowed to 1984 the past!  The game is complete.\00")
 (data (i32.const 624) "You have already shot, you cannot shoot again.\00")
 (data (i32.const 672) "GameID(\00")
 (data (i32.const 688) "):\n\00")
 (data (i32.const 704) "(\00")
 (data (i32.const 720) ") vs (\00")
 (data (i32.const 736) ") \00")
 (data (i32.const 752) "Hello get: \00")
 (data (i32.const 768) "->\00")
 (data (i32.const 784) "\n\00")
 (data (i32.const 800) "rps\00")
 (data (i32.const 816) "message shorter than expected\00")
 (export "memory" (memory $0))
 (export "_ZN3rps18getOrCreateAccountERNS_7accountE" (func $_ZN3rps18getOrCreateAccountERNS_7accountE))
 (export "_ZN3rps11valid_shootEh" (func $_ZN3rps11valid_shootEh))
 (export "_ZN3rps22doesPlayerBeatOpponentENS_4MoveES0_" (func $_ZN3rps22doesPlayerBeatOpponentENS_4MoveES0_))
 (export "_ZN3rps13updateAccountERNS_7accountEbbNS_4MoveE" (func $_ZN3rps13updateAccountERNS_7accountEbbNS_4MoveE))
 (export "_ZN3rps10finishGameERNS_4gameE" (func $_ZN3rps10finishGameERNS_4gameE))
 (export "_ZN3rps13apply_requestERKNS_3prxE" (func $_ZN3rps13apply_requestERKNS_3prxE))
 (export "_ZN3rps11apply_shootERKNS_5shootE" (func $_ZN3rps11apply_shootERKNS_5shootE))
 (export "_ZN3rps11apply_debugERKNS_5debugE" (func $_ZN3rps11apply_debugERKNS_5debugE))
 (export "init" (func $init))
 (export "apply" (func $apply))
 (func $_ZN3rps18getOrCreateAccountERNS_7accountE (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (i64.store offset=8
   (get_local $8)
   (i64.load align=1
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ne
      (call $load_i64
       (i64.const -4796333603149578240)
       (i64.const -4796333603149578240)
       (i64.const 3607749779137757184)
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (i32.const 36)
      )
      (i32.const 36)
     )
    )
    (set_local $1
     (i32.load offset=40
      (get_local $8)
     )
    )
    (set_local $2
     (i32.load offset=36
      (get_local $8)
     )
    )
    (set_local $3
     (i32.load offset=32
      (get_local $8)
     )
    )
    (set_local $4
     (i32.load offset=28
      (get_local $8)
     )
    )
    (set_local $5
     (i32.load offset=24
      (get_local $8)
     )
    )
    (set_local $6
     (i32.load offset=20
      (get_local $8)
     )
    )
    (set_local $7
     (i32.load offset=16
      (get_local $8)
     )
    )
    (i64.store align=1
     (get_local $0)
     (i64.load offset=8
      (get_local $8)
     )
    )
    (i32.store offset=8 align=1
     (get_local $0)
     (get_local $7)
    )
    (i32.store offset=12 align=1
     (get_local $0)
     (get_local $6)
    )
    (i32.store offset=16 align=1
     (get_local $0)
     (get_local $5)
    )
    (i32.store offset=20 align=1
     (get_local $0)
     (get_local $4)
    )
    (i32.store offset=24 align=1
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=28 align=1
     (get_local $0)
     (get_local $2)
    )
    (i32.store offset=32 align=1
     (get_local $0)
     (get_local $1)
    )
    (br $label$0)
   )
   (call $assert
    (i32.ne
     (call $store_i64
      (i64.const -4796333603149578240)
      (i64.const 3607749779137757184)
      (get_local $0)
      (i32.const 36)
     )
     (i32.const 0)
    )
    (i32.const 16)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZN3rps11valid_shootEh (param $0 i32) (result i32)
  (i32.lt_u
   (i32.and
    (i32.add
     (get_local $0)
     (i32.const -1)
    )
    (i32.const 255)
   )
   (i32.const 3)
  )
 )
 (func $_ZN3rps22doesPlayerBeatOpponentENS_4MoveES0_ (param $0 i32) (param $1 i32) (result i32)
  (block $label$0
   (block $label$1
    (block $label$2
     (br_if $label$2
      (i32.ne
       (get_local $0)
       (i32.const 1)
      )
     )
     (br_if $label$1
      (i32.eq
       (get_local $1)
       (i32.const 3)
      )
     )
    )
    (br_if $label$0
     (i32.ne
      (get_local $0)
      (i32.const 2)
     )
    )
    (br_if $label$0
     (i32.ne
      (get_local $1)
      (i32.const 1)
     )
    )
   )
   (return
    (i32.const 1)
   )
  )
  (i32.and
   (i32.eq
    (get_local $0)
    (i32.const 3)
   )
   (i32.eq
    (get_local $1)
    (i32.const 2)
   )
  )
 )
 (func $_ZN3rps13updateAccountERNS_7accountEbbNS_4MoveE (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (i32.store align=1
   (tee_local $1
    (select
     (i32.add
      (get_local $0)
      (i32.const 12)
     )
     (select
      (i32.add
       (get_local $0)
       (i32.const 20)
      )
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (i32.add
    (i32.load align=1
     (get_local $1)
    )
    (i32.const 1)
   )
  )
  (i32.store align=1
   (tee_local $3
    (select
     (i32.add
      (get_local $0)
      (i32.const 24)
     )
     (select
      (i32.add
       (get_local $0)
       (i32.const 28)
      )
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
      (i32.eq
       (get_local $3)
       (i32.const 2)
      )
     )
     (i32.eq
      (get_local $3)
      (i32.const 1)
     )
    )
   )
   (i32.add
    (i32.load align=1
     (get_local $3)
    )
    (i32.const 1)
   )
  )
  (call $assert
   (i32.ne
    (call $update_i64
     (i64.const -4796333603149578240)
     (i64.const 3607749779137757184)
     (get_local $0)
     (i32.const 36)
    )
    (i32.const 0)
   )
   (i32.const 48)
  )
 )
 (func $_ZN3rps10finishGameERNS_4gameE (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $14
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (block $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (br_if $label$3
       (i32.eqz
        (tee_local $2
         (i32.load8_u offset=32
          (get_local $0)
         )
        )
       )
      )
      (br_if $label$3
       (i32.eqz
        (tee_local $1
         (i32.load8_u offset=33
          (get_local $0)
         )
        )
       )
      )
      (br_if $label$2
       (i32.ne
        (get_local $2)
        (get_local $1)
       )
      )
      (set_local $4
       (i64.const 0)
      )
      (set_local $3
       (i64.const 59)
      )
      (set_local $2
       (i32.const 112)
      )
      (set_local $5
       (i64.const 0)
      )
      (loop $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (block $label$8
           (block $label$9
            (br_if $label$9
             (i64.gt_u
              (get_local $4)
              (i64.const 2)
             )
            )
            (br_if $label$8
             (i32.gt_u
              (i32.and
               (i32.add
                (tee_local $1
                 (i32.load8_s
                  (get_local $2)
                 )
                )
                (i32.const -97)
               )
               (i32.const 255)
              )
              (i32.const 25)
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 165)
             )
            )
            (br $label$7)
           )
           (set_local $6
            (i64.const 0)
           )
           (br_if $label$6
            (i64.le_u
             (get_local $4)
             (i64.const 11)
            )
           )
           (br $label$5)
          )
          (set_local $1
           (select
            (i32.add
             (get_local $1)
             (i32.const 208)
            )
            (i32.const 0)
            (i32.lt_u
             (i32.and
              (i32.add
               (get_local $1)
               (i32.const -49)
              )
              (i32.const 255)
             )
             (i32.const 5)
            )
           )
          )
         )
         (set_local $6
          (i64.shr_s
           (i64.shl
            (i64.extend_u/i32
             (get_local $1)
            )
            (i64.const 56)
           )
           (i64.const 56)
          )
         )
        )
        (set_local $6
         (i64.shl
          (i64.and
           (get_local $6)
           (i64.const 31)
          )
          (i64.and
           (get_local $3)
           (i64.const 4294967295)
          )
         )
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
       (set_local $4
        (i64.add
         (get_local $4)
         (i64.const 1)
        )
       )
       (set_local $5
        (i64.or
         (get_local $6)
         (get_local $5)
        )
       )
       (br_if $label$4
        (i64.ne
         (tee_local $3
          (i64.add
           (get_local $3)
           (i64.const -5)
          )
         )
         (i64.const -6)
        )
       )
      )
      (i64.store offset=24 align=1
       (get_local $0)
       (get_local $5)
      )
      (set_local $8
       (i32.const 0)
      )
      (set_local $7
       (i32.const 1)
      )
      (br $label$1)
     )
     (call $assert
      (i32.ne
       (call $update_i64
        (i64.const -4796333603149578240)
        (i64.const 7035937633859534848)
        (get_local $0)
        (i32.const 34)
       )
       (i32.const 0)
      )
      (i32.const 80)
     )
     (br $label$0)
    )
    (set_local $8
     (i32.const 1)
    )
    (set_local $7
     (i32.const 0)
    )
    (block $label$10
     (br_if $label$10
      (i32.ne
       (get_local $2)
       (i32.const 1)
      )
     )
     (br_if $label$1
      (i32.eq
       (get_local $1)
       (i32.const 3)
      )
     )
    )
    (block $label$11
     (br_if $label$11
      (i32.ne
       (get_local $2)
       (i32.const 2)
      )
     )
     (br_if $label$1
      (i32.eq
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (set_local $8
     (i32.and
      (i32.eq
       (get_local $2)
       (i32.const 3)
      )
      (i32.eq
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (i64.store offset=48
    (get_local $14)
    (tee_local $6
     (i64.load offset=8 align=1
      (get_local $0)
     )
    )
   )
   (i64.store offset=8
    (get_local $14)
    (tee_local $4
     (i64.load offset=16 align=1
      (get_local $0)
     )
    )
   )
   (i64.store offset=88
    (get_local $14)
    (get_local $6)
   )
   (block $label$12
    (block $label$13
     (br_if $label$13
      (i32.ne
       (call $load_i64
        (i64.const -4796333603149578240)
        (i64.const -4796333603149578240)
        (i64.const 3607749779137757184)
        (i32.add
         (get_local $14)
         (i32.const 88)
        )
        (i32.const 36)
       )
       (i32.const 36)
      )
     )
     (set_local $2
      (i32.load offset=120
       (get_local $14)
      )
     )
     (set_local $1
      (i32.load offset=116
       (get_local $14)
      )
     )
     (set_local $10
      (i32.load offset=112
       (get_local $14)
      )
     )
     (set_local $9
      (i32.load offset=108
       (get_local $14)
      )
     )
     (set_local $12
      (i32.load offset=104
       (get_local $14)
      )
     )
     (set_local $13
      (i32.load offset=100
       (get_local $14)
      )
     )
     (set_local $11
      (i32.load offset=96
       (get_local $14)
      )
     )
     (i64.store offset=48
      (get_local $14)
      (i64.load offset=88
       (get_local $14)
      )
     )
     (i32.store offset=56
      (get_local $14)
      (get_local $11)
     )
     (i32.store offset=60
      (get_local $14)
      (get_local $13)
     )
     (i32.store offset=64
      (get_local $14)
      (get_local $12)
     )
     (i32.store offset=68
      (get_local $14)
      (get_local $9)
     )
     (i32.store offset=72
      (get_local $14)
      (get_local $10)
     )
     (i32.store offset=76
      (get_local $14)
      (get_local $1)
     )
     (i32.store offset=80
      (get_local $14)
      (get_local $2)
     )
     (br $label$12)
    )
    (call $assert
     (i32.ne
      (call $store_i64
       (i64.const -4796333603149578240)
       (i64.const 3607749779137757184)
       (i32.add
        (get_local $14)
        (i32.const 48)
       )
       (i32.const 36)
      )
      (i32.const 0)
     )
     (i32.const 16)
    )
    (set_local $4
     (i64.load offset=8
      (get_local $14)
     )
    )
   )
   (i64.store offset=88
    (get_local $14)
    (get_local $4)
   )
   (block $label$14
    (block $label$15
     (br_if $label$15
      (i32.ne
       (call $load_i64
        (i64.const -4796333603149578240)
        (i64.const -4796333603149578240)
        (i64.const 3607749779137757184)
        (i32.add
         (get_local $14)
         (i32.const 88)
        )
        (i32.const 36)
       )
       (i32.const 36)
      )
     )
     (set_local $2
      (i32.load offset=120
       (get_local $14)
      )
     )
     (set_local $1
      (i32.load offset=116
       (get_local $14)
      )
     )
     (set_local $10
      (i32.load offset=112
       (get_local $14)
      )
     )
     (set_local $9
      (i32.load offset=108
       (get_local $14)
      )
     )
     (set_local $12
      (i32.load offset=104
       (get_local $14)
      )
     )
     (set_local $13
      (i32.load offset=100
       (get_local $14)
      )
     )
     (set_local $11
      (i32.load offset=96
       (get_local $14)
      )
     )
     (i64.store offset=8
      (get_local $14)
      (i64.load offset=88
       (get_local $14)
      )
     )
     (i32.store offset=16
      (get_local $14)
      (get_local $11)
     )
     (i32.store offset=20
      (get_local $14)
      (get_local $13)
     )
     (i32.store offset=24
      (get_local $14)
      (get_local $12)
     )
     (i32.store offset=28
      (get_local $14)
      (get_local $9)
     )
     (i32.store offset=32
      (get_local $14)
      (get_local $10)
     )
     (i32.store offset=36
      (get_local $14)
      (get_local $1)
     )
     (i32.store offset=40
      (get_local $14)
      (get_local $2)
     )
     (set_local $1
      (i32.add
       (get_local $14)
       (i32.const 40)
      )
     )
     (set_local $10
      (i32.add
       (get_local $14)
       (i32.const 36)
      )
     )
     (set_local $9
      (i32.add
       (get_local $14)
       (i32.const 32)
      )
     )
     (set_local $12
      (i32.add
       (get_local $14)
       (i32.const 28)
      )
     )
     (set_local $13
      (i32.add
       (get_local $14)
       (i32.const 24)
      )
     )
     (set_local $11
      (i32.add
       (get_local $14)
       (i32.const 20)
      )
     )
     (br $label$14)
    )
    (call $assert
     (i32.ne
      (call $store_i64
       (i64.const -4796333603149578240)
       (i64.const 3607749779137757184)
       (i32.add
        (get_local $14)
        (i32.const 8)
       )
       (i32.const 36)
      )
      (i32.const 0)
     )
     (i32.const 16)
    )
    (set_local $9
     (i32.add
      (get_local $14)
      (i32.const 32)
     )
    )
    (set_local $10
     (i32.add
      (get_local $14)
      (i32.const 36)
     )
    )
    (set_local $1
     (i32.add
      (get_local $14)
      (i32.const 40)
     )
    )
    (set_local $11
     (i32.add
      (get_local $14)
      (i32.const 20)
     )
    )
    (set_local $12
     (i32.add
      (get_local $14)
      (i32.const 28)
     )
    )
    (set_local $13
     (i32.add
      (get_local $14)
      (i32.const 24)
     )
    )
   )
   (i32.store
    (tee_local $2
     (select
      (i32.add
       (get_local $14)
       (i32.const 60)
      )
      (select
       (i32.add
        (get_local $14)
        (i32.const 68)
       )
       (i32.add
        (get_local $14)
        (i32.const 64)
       )
       (get_local $7)
      )
      (get_local $8)
     )
    )
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (tee_local $2
     (select
      (i32.add
       (get_local $14)
       (i32.const 72)
      )
      (select
       (i32.add
        (get_local $14)
        (i32.const 76)
       )
       (i32.add
        (i32.add
         (get_local $14)
         (i32.const 48)
        )
        (i32.const 32)
       )
       (i32.eq
        (tee_local $2
         (i32.load8_u
          (i32.add
           (get_local $0)
           (i32.const 32)
          )
         )
        )
        (i32.const 2)
       )
      )
      (i32.eq
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (call $assert
    (i32.ne
     (call $update_i64
      (i64.const -4796333603149578240)
      (i64.const 3607749779137757184)
      (i32.add
       (get_local $14)
       (i32.const 48)
      )
      (i32.const 36)
     )
     (i32.const 0)
    )
    (i32.const 48)
   )
   (i32.store
    (tee_local $2
     (select
      (select
       (get_local $12)
       (get_local $13)
       (get_local $7)
      )
      (get_local $11)
      (get_local $8)
     )
    )
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (i32.store
    (tee_local $2
     (select
      (get_local $9)
      (select
       (get_local $10)
       (get_local $1)
       (i32.eq
        (tee_local $2
         (i32.load8_u
          (i32.add
           (get_local $0)
           (i32.const 33)
          )
         )
        )
        (i32.const 2)
       )
      )
      (i32.eq
       (get_local $2)
       (i32.const 1)
      )
     )
    )
    (i32.add
     (i32.load
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (call $assert
    (i32.ne
     (call $update_i64
      (i64.const -4796333603149578240)
      (i64.const 3607749779137757184)
      (i32.add
       (get_local $14)
       (i32.const 8)
      )
      (i32.const 36)
     )
     (i32.const 0)
    )
    (i32.const 48)
   )
   (call $assert
    (i32.ne
     (call $update_i64
      (i64.const -4796333603149578240)
      (i64.const 7035937633859534848)
      (get_local $0)
      (i32.const 34)
     )
     (i32.const 0)
    )
    (i32.const 128)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $14)
    (i32.const 128)
   )
  )
 )
 (func $_ZN3rps13apply_requestERKNS_3prxE (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $10
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 128)
    )
   )
  )
  (call $require_auth
   (i64.load align=1
    (get_local $0)
   )
  )
  (block $label$0
   (block $label$1
    (br_if $label$1
     (i32.ne
      (call $front_i64
       (i64.const -4796333603149578240)
       (i64.const -4796333603149578240)
       (i64.const -5910411560970354688)
       (i32.add
        (get_local $10)
        (i32.const 120)
       )
       (i32.const 8)
      )
      (i32.const 8)
     )
    )
    (call $assert
     (i64.ne
      (i64.load align=1
       (get_local $0)
      )
      (i64.load offset=120
       (get_local $10)
      )
     )
     (i32.const 192)
    )
    (i64.store offset=104
     (get_local $10)
     (i64.load offset=120
      (get_local $10)
     )
    )
    (call $assert
     (i32.ne
      (call $load_i64
       (i64.load align=1
        (get_local $0)
       )
       (i64.const -4796333603149578240)
       (i64.const 3678637565952393216)
       (i32.add
        (get_local $10)
        (i32.const 104)
       )
       (i32.const 16)
      )
      (i32.const 16)
     )
     (i32.const 224)
    )
    (set_local $7
     (i64.const 0)
    )
    (set_local $6
     (i64.const 59)
    )
    (set_local $5
     (i32.const 288)
    )
    (set_local $8
     (i64.const 0)
    )
    (loop $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (block $label$6
         (block $label$7
          (br_if $label$7
           (i64.gt_u
            (get_local $7)
            (i64.const 3)
           )
          )
          (br_if $label$6
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $1
               (i32.load8_s
                (get_local $5)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 165)
           )
          )
          (br $label$5)
         )
         (set_local $9
          (i64.const 0)
         )
         (br_if $label$4
          (i64.le_u
           (get_local $7)
           (i64.const 11)
          )
         )
         (br $label$3)
        )
        (set_local $1
         (select
          (i32.add
           (get_local $1)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $1)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $9
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $1)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $9
       (i64.shl
        (i64.and
         (get_local $9)
         (i64.const 31)
        )
        (i64.and
         (get_local $6)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $5
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $7
      (i64.add
       (get_local $7)
       (i64.const 1)
      )
     )
     (set_local $8
      (i64.or
       (get_local $9)
       (get_local $8)
      )
     )
     (br_if $label$2
      (i64.ne
       (tee_local $6
        (i64.add
         (get_local $6)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (i64.store offset=88
     (get_local $10)
     (get_local $8)
    )
    (drop
     (call $back_i64
      (i64.const -4796333603149578240)
      (i64.const -4796333603149578240)
      (i64.const 7035937633859534848)
      (i32.add
       (get_local $10)
       (i32.const 64)
      )
      (i32.const 34)
     )
    )
    (i64.store offset=56
     (get_local $10)
     (tee_local $2
      (i64.add
       (i64.load offset=64
        (get_local $10)
       )
       (i64.const 1)
      )
     )
    )
    (i64.store offset=48
     (get_local $10)
     (i64.load offset=120
      (get_local $10)
     )
    )
    (call $assert
     (i32.ne
      (call $store_i64
       (i64.load align=1
        (get_local $0)
       )
       (i64.const 3678637565952393216)
       (i32.add
        (get_local $10)
        (i32.const 48)
       )
       (i32.const 16)
      )
      (i32.const 0)
     )
     (i32.const 304)
    )
    (set_local $3
     (i64.load align=1
      (get_local $0)
     )
    )
    (set_local $7
     (i64.const 0)
    )
    (set_local $6
     (i64.const 59)
    )
    (set_local $5
     (i32.const 288)
    )
    (set_local $4
     (i64.load offset=120
      (get_local $10)
     )
    )
    (set_local $8
     (i64.const 0)
    )
    (loop $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (block $label$12
         (block $label$13
          (br_if $label$13
           (i64.gt_u
            (get_local $7)
            (i64.const 3)
           )
          )
          (br_if $label$12
           (i32.gt_u
            (i32.and
             (i32.add
              (tee_local $1
               (i32.load8_s
                (get_local $5)
               )
              )
              (i32.const -97)
             )
             (i32.const 255)
            )
            (i32.const 25)
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 165)
           )
          )
          (br $label$11)
         )
         (set_local $9
          (i64.const 0)
         )
         (br_if $label$10
          (i64.le_u
           (get_local $7)
           (i64.const 11)
          )
         )
         (br $label$9)
        )
        (set_local $1
         (select
          (i32.add
           (get_local $1)
           (i32.const 208)
          )
          (i32.const 0)
          (i32.lt_u
           (i32.and
            (i32.add
             (get_local $1)
             (i32.const -49)
            )
            (i32.const 255)
           )
           (i32.const 5)
          )
         )
        )
       )
       (set_local $9
        (i64.shr_s
         (i64.shl
          (i64.extend_u/i32
           (get_local $1)
          )
          (i64.const 56)
         )
         (i64.const 56)
        )
       )
      )
      (set_local $9
       (i64.shl
        (i64.and
         (get_local $9)
         (i64.const 31)
        )
        (i64.and
         (get_local $6)
         (i64.const 4294967295)
        )
       )
      )
     )
     (set_local $5
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (set_local $7
      (i64.add
       (get_local $7)
       (i64.const 1)
      )
     )
     (set_local $8
      (i64.or
       (get_local $9)
       (get_local $8)
      )
     )
     (br_if $label$8
      (i64.ne
       (tee_local $6
        (i64.add
         (get_local $6)
         (i64.const -5)
        )
       )
       (i64.const -6)
      )
     )
    )
    (i64.store offset=8
     (get_local $10)
     (get_local $2)
    )
    (i64.store offset=32
     (get_local $10)
     (get_local $8)
    )
    (i64.store offset=16
     (get_local $10)
     (get_local $3)
    )
    (i64.store offset=24
     (get_local $10)
     (get_local $4)
    )
    (i32.store16 offset=40
     (get_local $10)
     (i32.const 0)
    )
    (call $assert
     (i32.ne
      (call $store_i64
       (i64.const -4796333603149578240)
       (i64.const 7035937633859534848)
       (i32.add
        (get_local $10)
        (i32.const 8)
       )
       (i32.const 34)
      )
      (i32.const 0)
     )
     (i32.const 352)
    )
    (call $assert
     (i32.ne
      (call $remove_i64
       (i64.const -4796333603149578240)
       (i64.const -5910411560970354688)
       (i32.add
        (get_local $10)
        (i32.const 120)
       )
      )
      (i32.const 0)
     )
     (i32.const 384)
    )
    (br $label$0)
   )
   (i64.store offset=64
    (get_local $10)
    (i64.load align=1
     (get_local $0)
    )
   )
   (call $assert
    (i32.ne
     (call $store_i64
      (i64.const -4796333603149578240)
      (i64.const -5910411560970354688)
      (i32.add
       (get_local $10)
       (i32.const 64)
      )
      (i32.const 8)
     )
     (i32.const 0)
    )
    (i32.const 160)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $10)
    (i32.const 128)
   )
  )
 )
 (func $_ZN3rps11apply_shootERKNS_5shootE (param $0 i32)
  (local $1 i32)
  (local $2 i64)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (call $require_auth
   (i64.load offset=8 align=1
    (get_local $0)
   )
  )
  (call $assert
   (i32.lt_u
    (i32.and
     (i32.add
      (i32.load8_u offset=16
       (get_local $0)
      )
      (i32.const -1)
     )
     (i32.const 255)
    )
    (i32.const 3)
   )
   (i32.const 432)
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 288)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 3)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $1
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $1
       (select
        (i32.add
         (get_local $1)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $1)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=32
   (get_local $8)
   (get_local $6)
  )
  (i64.store offset=8
   (get_local $8)
   (i64.load align=1
    (get_local $0)
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (i64.const -4796333603149578240)
     (i64.const -4796333603149578240)
     (i64.const 7035937633859534848)
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
     (i32.const 34)
    )
    (i32.const 34)
   )
   (i32.const 480)
  )
  (call $assert
   (i32.or
    (i64.eq
     (i64.load offset=16
      (get_local $8)
     )
     (tee_local $5
      (i64.load align=1
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
     )
    )
    (i64.eq
     (i64.load offset=24
      (get_local $8)
     )
     (get_local $5)
    )
   )
   (i32.const 512)
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 288)
  )
  (set_local $2
   (i64.load offset=32
    (get_local $8)
   )
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$6
   (block $label$7
    (block $label$8
     (block $label$9
      (block $label$10
       (block $label$11
        (br_if $label$11
         (i64.gt_u
          (get_local $5)
          (i64.const 3)
         )
        )
        (br_if $label$10
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $1
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 165)
         )
        )
        (br $label$9)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$8
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$7)
      )
      (set_local $1
       (select
        (i32.add
         (get_local $1)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $1)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$6
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (call $assert
   (i64.eq
    (get_local $2)
    (get_local $6)
   )
   (i32.const 560)
  )
  (block $label$12
   (block $label$13
    (br_if $label$13
     (i64.ne
      (i64.load
       (i32.add
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (i32.const 8)
       )
      )
      (i64.load align=1
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
     )
    )
    (call $assert
     (i32.eqz
      (i32.load8_u offset=40
       (get_local $8)
      )
     )
     (i32.const 624)
    )
    (i32.store8 offset=40
     (get_local $8)
     (i32.load8_u
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
     )
    )
    (br $label$12)
   )
   (call $assert
    (i32.eqz
     (i32.load8_u offset=41
      (get_local $8)
     )
    )
    (i32.const 624)
   )
   (i32.store8 offset=41
    (get_local $8)
    (i32.load8_u
     (i32.add
      (get_local $0)
      (i32.const 16)
     )
    )
   )
  )
  (call $_ZN3rps10finishGameERNS_4gameE
   (i32.add
    (get_local $8)
    (i32.const 8)
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 48)
   )
  )
 )
 (func $_ZN3rps11apply_debugERKNS_5debugE (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $7
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 48)
    )
   )
  )
  (set_local $4
   (i64.const 0)
  )
  (set_local $3
   (i64.const 59)
  )
  (set_local $2
   (i32.const 288)
  )
  (set_local $5
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $4)
          (i64.const 3)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $1
             (i32.load8_s
              (get_local $2)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $1
         (i32.add
          (get_local $1)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $6
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $4)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $1
       (select
        (i32.add
         (get_local $1)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $1)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $6
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $1)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $6
     (i64.shl
      (i64.and
       (get_local $6)
       (i64.const 31)
      )
      (i64.and
       (get_local $3)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $2
    (i32.add
     (get_local $2)
     (i32.const 1)
    )
   )
   (set_local $4
    (i64.add
     (get_local $4)
     (i64.const 1)
    )
   )
   (set_local $5
    (i64.or
     (get_local $6)
     (get_local $5)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $3
      (i64.add
       (get_local $3)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (i64.store offset=32
   (get_local $7)
   (get_local $5)
  )
  (i64.store offset=8
   (get_local $7)
   (i64.load align=1
    (get_local $0)
   )
  )
  (call $assert
   (i32.eq
    (call $load_i64
     (i64.const -4796333603149578240)
     (i64.const -4796333603149578240)
     (i64.const 7035937633859534848)
     (i32.add
      (get_local $7)
      (i32.const 8)
     )
     (i32.const 34)
    )
    (i32.const 34)
   )
   (i32.const 480)
  )
  (set_local $4
   (i64.load offset=8
    (get_local $7)
   )
  )
  (call $prints
   (i32.const 672)
  )
  (call $printi
   (get_local $4)
  )
  (call $prints
   (i32.const 688)
  )
  (set_local $4
   (i64.load8_u offset=40
    (get_local $7)
   )
  )
  (call $printn
   (i64.load offset=16
    (get_local $7)
   )
  )
  (call $prints
   (i32.const 704)
  )
  (call $printi
   (get_local $4)
  )
  (call $prints
   (i32.const 720)
  )
  (set_local $4
   (i64.load offset=24
    (get_local $7)
   )
  )
  (call $printi
   (i64.load8_u offset=41
    (get_local $7)
   )
  )
  (call $prints
   (i32.const 736)
  )
  (call $printn
   (get_local $4)
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $7)
    (i32.const 48)
   )
  )
 )
 (func $init
 )
 (func $apply (param $0 i64) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (i32.store offset=4
   (i32.const 0)
   (tee_local $8
    (i32.sub
     (i32.load offset=4
      (i32.const 0)
     )
     (i32.const 32)
    )
   )
  )
  (call $prints
   (i32.const 752)
  )
  (call $printn
   (get_local $0)
  )
  (call $prints
   (i32.const 768)
  )
  (call $printn
   (get_local $1)
  )
  (call $prints
   (i32.const 784)
  )
  (set_local $5
   (i64.const 0)
  )
  (set_local $4
   (i64.const 59)
  )
  (set_local $3
   (i32.const 800)
  )
  (set_local $6
   (i64.const 0)
  )
  (loop $label$0
   (block $label$1
    (block $label$2
     (block $label$3
      (block $label$4
       (block $label$5
        (br_if $label$5
         (i64.gt_u
          (get_local $5)
          (i64.const 2)
         )
        )
        (br_if $label$4
         (i32.gt_u
          (i32.and
           (i32.add
            (tee_local $2
             (i32.load8_s
              (get_local $3)
             )
            )
            (i32.const -97)
           )
           (i32.const 255)
          )
          (i32.const 25)
         )
        )
        (set_local $2
         (i32.add
          (get_local $2)
          (i32.const 165)
         )
        )
        (br $label$3)
       )
       (set_local $7
        (i64.const 0)
       )
       (br_if $label$2
        (i64.le_u
         (get_local $5)
         (i64.const 11)
        )
       )
       (br $label$1)
      )
      (set_local $2
       (select
        (i32.add
         (get_local $2)
         (i32.const 208)
        )
        (i32.const 0)
        (i32.lt_u
         (i32.and
          (i32.add
           (get_local $2)
           (i32.const -49)
          )
          (i32.const 255)
         )
         (i32.const 5)
        )
       )
      )
     )
     (set_local $7
      (i64.shr_s
       (i64.shl
        (i64.extend_u/i32
         (get_local $2)
        )
        (i64.const 56)
       )
       (i64.const 56)
      )
     )
    )
    (set_local $7
     (i64.shl
      (i64.and
       (get_local $7)
       (i64.const 31)
      )
      (i64.and
       (get_local $4)
       (i64.const 4294967295)
      )
     )
    )
   )
   (set_local $3
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
   )
   (set_local $5
    (i64.add
     (get_local $5)
     (i64.const 1)
    )
   )
   (set_local $6
    (i64.or
     (get_local $7)
     (get_local $6)
    )
   )
   (br_if $label$0
    (i64.ne
     (tee_local $4
      (i64.add
       (get_local $4)
       (i64.const -5)
      )
     )
     (i64.const -6)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i64.ne
     (get_local $6)
     (get_local $0)
    )
   )
   (block $label$7
    (block $label$8
     (br_if $label$8
      (i64.eq
       (get_local $1)
       (i64.const -4995154566526795776)
      )
     )
     (br_if $label$7
      (i64.eq
       (get_local $1)
       (i64.const 5372695399406501888)
      )
     )
     (br_if $label$6
      (i64.ne
       (get_local $1)
       (i64.const -4365874251119460352)
      )
     )
     (call $assert
      (i32.gt_u
       (call $read_message
        (i32.add
         (get_local $8)
         (i32.const 8)
        )
        (i32.const 17)
       )
       (i32.const 16)
      )
      (i32.const 816)
     )
     (call $_ZN3rps11apply_shootERKNS_5shootE
      (i32.add
       (get_local $8)
       (i32.const 8)
      )
     )
     (br $label$6)
    )
    (call $assert
     (i32.gt_u
      (call $read_message
       (i32.add
        (get_local $8)
        (i32.const 8)
       )
       (i32.const 8)
      )
      (i32.const 7)
     )
     (i32.const 816)
    )
    (i64.store offset=8
     (get_local $8)
     (i64.load offset=8
      (get_local $8)
     )
    )
    (call $_ZN3rps13apply_requestERKNS_3prxE
     (i32.add
      (get_local $8)
      (i32.const 8)
     )
    )
    (br $label$6)
   )
   (call $assert
    (i32.gt_u
     (call $read_message
      (i32.add
       (get_local $8)
       (i32.const 8)
      )
      (i32.const 8)
     )
     (i32.const 7)
    )
    (i32.const 816)
   )
   (i64.store offset=8
    (get_local $8)
    (i64.load offset=8
     (get_local $8)
    )
   )
   (call $_ZN3rps11apply_debugERKNS_5debugE
    (i32.add
     (get_local $8)
     (i32.const 8)
    )
   )
  )
  (i32.store offset=4
   (i32.const 0)
   (i32.add
    (get_local $8)
    (i32.const 32)
   )
  )
 )
)
