class c_1427_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1427_2;
    c_1427_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxz1x0000zzxxzx00z0z0zx0xx0zzzxxxxxxxxzzzzxxxxxxxxxzxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
