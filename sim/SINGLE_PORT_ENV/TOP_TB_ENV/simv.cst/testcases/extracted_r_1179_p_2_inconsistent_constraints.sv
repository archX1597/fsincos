class c_1179_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1179_2;
    c_1179_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxx110010xx01z0zz10zz10x11zz11xzzxxxxzxzzxzxzzxxxzxzxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
