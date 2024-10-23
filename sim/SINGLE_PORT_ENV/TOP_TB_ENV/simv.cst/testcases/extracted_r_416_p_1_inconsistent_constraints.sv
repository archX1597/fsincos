class c_416_1;
    rand bit[7:0] f41_exp8; // rand_mode = ON 

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (f41_exp8 == 8'hfc);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../UVM_ENV/f41_sequence.sv:14)
    {
       (f41_exp8 <= 8'h80);
    }
endclass

program p_416_1;
    c_416_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0z10z0x1000xzxz10xzx1x00zzxz0xxzzzzxzxxzxxxzxxxzxzxxxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
