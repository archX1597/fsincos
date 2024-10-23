class c_1288_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1288_2;
    c_1288_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz0zxxxx11x1x0xzx1zx1xxxxzx1xx1zxxxzxzxxxxzxzzzzxxxxxxxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
